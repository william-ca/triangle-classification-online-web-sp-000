class Triangle

  attr_accessor :side1, :side2, :side3, :equilateral, :isosceles, :scalene

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def three_sides
    if @side1 > 0 && @side2 > 0 && @side3 > 0
      true
    else
      raise TriangleError
    end
  end

  def kind
    if three_sides == true && @side1 = @side2 && @side2 = @side3
      @equilateral
    elsif three_sides == true && @side1 != @side2 && @side2 != @side3
      @scalene
    else
      @isosceles
    end
  end

  class TriangleError < StandardError

  end

end
