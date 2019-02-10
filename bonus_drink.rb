# coding: utf-8
class BonusDrink
  def self.total_count_for(amount)
    # 何本飲めるか = 今の本数 + この本数でもらえるおまけ本数
    amount + bonus_count_for(amount)
  end

  def self.bonus_count_for(amount)
    return 0 if amount < 3
    bonus, rest = *amount.divmod(3)
    bonus + bonus_count_for(bonus + rest)
  end
end
