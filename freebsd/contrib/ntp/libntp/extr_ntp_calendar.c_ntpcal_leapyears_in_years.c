
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef int int32_t ;


 unsigned int int32_sflag (int ) ;
 unsigned int int32_to_uint32_2cpl (int ) ;
 int uint32_2cpl_to_int32 (unsigned int) ;

int32_t
ntpcal_leapyears_in_years(
 int32_t years
 )
{






 uint32_t sflag, sum, uyear;

 sflag = int32_sflag(years);
 uyear = int32_to_uint32_2cpl(years);
 uyear ^= sflag;

 sum = (uyear /= 4u);
 sum -= (uyear /= 25u);
 sum += (uyear /= 4u);







 return uint32_2cpl_to_int32(sflag ^ sum);
}
