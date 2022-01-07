
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hi; scalar_t__ lo; } ;
typedef TYPE_1__ ntpcal_split ;
typedef int int32_t ;


 size_t is_leapyear (int) ;
 TYPE_1__ ntpcal_days_in_months (int) ;
 scalar_t__ ntpcal_days_in_years (int) ;
 scalar_t__** real_month_table ;

int32_t
ntpcal_edate_to_yeardays(
 int32_t years,
 int32_t mons,
 int32_t mdays
 )
{
 ntpcal_split tmp;

 if (0 <= mons && mons < 12) {
  years += 1;
  mdays += real_month_table[is_leapyear(years)][mons];
 } else {
  tmp = ntpcal_days_in_months(mons);
  mdays += tmp.lo
         + ntpcal_days_in_years(years + tmp.hi)
         - ntpcal_days_in_years(years);
 }

 return mdays;
}
