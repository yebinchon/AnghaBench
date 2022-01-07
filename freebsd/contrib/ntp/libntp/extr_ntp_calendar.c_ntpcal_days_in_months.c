
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_3__ {int lo; int hi; } ;
typedef TYPE_1__ ntpcal_split ;
typedef int int32_t ;


 unsigned int int32_sflag (int) ;
 unsigned int int32_to_uint32_2cpl (int) ;
 int* shift_month_table ;
 scalar_t__ uint32_2cpl_to_int32 (unsigned int) ;

ntpcal_split
ntpcal_days_in_months(
 int32_t m
 )
{
 ntpcal_split res;


 res.lo = m + 10;
 res.hi = (res.lo >= 12);
 if (res.hi)
  res.lo -= 12;


 if (res.lo < 0 || res.lo >= 12) {
  uint32_t mu, Q, sflag;
  sflag = int32_sflag(res.lo);
  mu = int32_to_uint32_2cpl(res.lo);
  Q = sflag ^ ((sflag ^ mu) / 12u);
  res.hi += uint32_2cpl_to_int32(Q);
  res.lo = mu - Q * 12u;
 }


 res.lo = shift_month_table[res.lo] - 306;

 return res;
}
