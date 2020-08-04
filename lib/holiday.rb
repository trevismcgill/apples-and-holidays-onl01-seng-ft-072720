require 'pry'
def second_supply_for_fourth_of_july(holiday_hash)
  given that holiday_hash looks like this:
  # holiday_hash = {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  #
  # {memorial_day: BBQ}
  return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, ooga)
  # holiday_hash is identical to the one above

  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays.each do |holiday, supplies|
        supplies.push(ooga)
      end
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holidays|
    if season == :spring
      holidays.each do |holiday, supplies|
        supplies.push(supply)
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
 christmas_supp = holiday_hash[:winter][:christmas]
 binding.pry
 new_years_supp = holiday_hash[:winter][:new_years]

 christmas_supp + new_years_supp
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"
    holidays.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").each{|arr_elem| arr_elem.capitalize!}.join(" ")}: #{supplies.join(", ")}"
end
end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holiday = []
  holiday_hash.each do |season, holidays|
      holidays.each do |holiday, supplies|
        if supplies.include?("BBQ")
           bbq_holiday.push(holiday)
        end
      end
    end
    bbq_holiday
end
