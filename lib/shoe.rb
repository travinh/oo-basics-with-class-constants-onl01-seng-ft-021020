class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []
  def initialize(brand)
    @brand = brand
    if BRANDS ==0
      BRANDS << brand
    else
      BRANDS.each do |item|
        if item!=brand
          BRANDS << brand
        end 
      end
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  
  
end