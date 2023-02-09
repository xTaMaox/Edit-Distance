class String
    def levenstein_distance(w)
        return w.size if empty?
        return size if w.empty?
        chars.each_with_index.inject((0..w.size).to_a) {|r, (c1, i)|
            w.chars.each_with_index.inject([i+1]) {|r1, (c2, j)|
                r1 << [r[j + 1] + 1, r1.last + 1, r[j] + ((c1 == c2) ? 0 : 1)].min
            }
        }.last
    end
end

def min_distance(word1, word2)
    word1.levenstein_distance(word2)
end