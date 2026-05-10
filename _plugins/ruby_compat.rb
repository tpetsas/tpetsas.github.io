# Ruby 3.2+ removed Object#tainted? but Liquid 4.x still calls it.
# Restore it as a no-op so the old gem works on modern Ruby.
if RUBY_VERSION >= "3.2"
  class Object
    def tainted?
      false
    end
  end
end
