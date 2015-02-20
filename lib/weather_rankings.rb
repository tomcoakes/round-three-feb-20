require 'net/http'
require 'json'



class WeatherRankings

  def temp_check(cities)
    cities.sort do |city1, city2|
      call_api(city1)["main"]["temp"] <=> call_api(city2)["main"]["temp"]
    end
  end

   def call_api(city)
    uri = URI("http://api.openweathermap.org/data/2.5/weather?q=#{city}")
    weather_as_a_string = Net::HTTP.get(uri)

   my_hash = JSON.parse(weather_as_a_string)
   end



end