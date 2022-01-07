
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {int hi; int lo; } ;
typedef TYPE_1__ ntpcal_split ;
typedef scalar_t__ int32_t ;


 scalar_t__** real_month_table ;

ntpcal_split
ntpcal_split_yeardays(
 int32_t eyd,
 int isleapyear
 )
{
 ntpcal_split res;
 const uint16_t *lt;


 lt = real_month_table[(isleapyear != 0)];
 if (0 <= eyd && eyd < lt[12]) {

  res.hi = eyd >> 5;
  if (lt[res.hi + 1] <= eyd)
   res.hi += 1;
  res.lo = eyd - lt[res.hi];
 } else {
  res.lo = res.hi = -1;
 }

 return res;
}
