#!/usr/bin/env ruby

class MegaGreeter
  attr_accessor :name

  def initialize(name = "World")
    @name = name
  end

  def say_hi
    if @name.nil?
      puts "..."
    elsif @name.respond_to?("each")
      @name.each do |name|
        puts "hello, #{name}!"
      end
    else
      puts "hello, #{@name}!"
    end
  end

  def say_bye
    if @name.nil?
      puts "..."
    elsif @name.respond_to?("join")
      puts "Goodbye, #{@name.join(", ")}. Come back soon."
    else
      puts "Goodbye, #{@name}. Come back soon."
    end
  end
end

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  mg.name = "Zeke"
  mg.say_hi
  mg.say_bye

  mg.name = ["Albert", "Brenda", "Charles",
              "Dave", "Engelbert"]
  mg.say_hi
  mg.say_bye

  mg.name = nil
  mg.say_hi
  mg.say_bye
end
