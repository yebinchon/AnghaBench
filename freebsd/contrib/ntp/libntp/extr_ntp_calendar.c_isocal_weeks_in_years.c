
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef int uint16_t ;
typedef int int32_t ;


 unsigned int int32_sflag (int) ;
 unsigned int int32_to_uint32_2cpl (int) ;
 int uint32_2cpl_to_int32 (unsigned int) ;

int32_t
isocal_weeks_in_years(
 int32_t years
 )
{



 static const uint16_t bctab[4] = { 157, 449, 597, 889 };

 int32_t cs, cw;
 uint32_t cc, ci, yu, sflag;

 sflag = int32_sflag(years);
 yu = int32_to_uint32_2cpl(years);


 cc = sflag ^ ((sflag ^ yu) / 100u);
 yu -= cc * 100u;
 ci = cc * 3u + 1;
 cs = uint32_2cpl_to_int32(sflag ^ ((sflag ^ ci) / 4u));
 ci = ci % 4u;





 cw = (yu * 53431u + bctab[ci]) / 1024u;

 return uint32_2cpl_to_int32(cc) * 5217 + cs + cw;
}
