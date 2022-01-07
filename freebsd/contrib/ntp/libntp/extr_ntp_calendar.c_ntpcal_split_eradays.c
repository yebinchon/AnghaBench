
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_3__ {int hi; unsigned int lo; } ;
typedef TYPE_1__ ntpcal_split ;
typedef int int32_t ;


 unsigned int GREGORIAN_CYCLE_DAYS ;
 unsigned int GREGORIAN_NORMAL_LEAP_CYCLE_DAYS ;
 unsigned int int32_sflag (int) ;
 int int32_to_uint32_2cpl (int) ;
 int uint32_2cpl_to_int32 (unsigned int) ;
 unsigned int uint32_saturate (int ,unsigned int) ;

ntpcal_split
ntpcal_split_eradays(
 int32_t days,
 int *isleapyear
 )
{







 ntpcal_split res;
 int32_t n100, n001;
 uint32_t uday, Q, sflag;


 sflag = int32_sflag(days);
 uday = uint32_saturate(int32_to_uint32_2cpl(days), sflag);
 uday = (4u * uday) | 3u;
 Q = sflag ^ ((sflag ^ uday) / GREGORIAN_CYCLE_DAYS);
 uday = uday - Q * GREGORIAN_CYCLE_DAYS;
 n100 = uint32_2cpl_to_int32(Q);



 uday |= 3;
 n001 = uday / GREGORIAN_NORMAL_LEAP_CYCLE_DAYS;
 uday = uday % GREGORIAN_NORMAL_LEAP_CYCLE_DAYS;


 res.hi = n100 * 100 + n001;
 res.lo = uday / 4u;







 if (isleapyear)
  *isleapyear = !((n001+1) & 3)
      && ((n001 != 99) || !((Q+1) & 3));

 return res;
}
