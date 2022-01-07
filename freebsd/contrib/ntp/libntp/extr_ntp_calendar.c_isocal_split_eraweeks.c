
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int hi; unsigned int lo; } ;
typedef TYPE_1__ ntpcal_split ;
typedef size_t int32_t ;


 unsigned int GREGORIAN_CYCLE_WEEKS ;
 unsigned int int32_sflag (size_t) ;
 int int32_to_uint32_2cpl (size_t) ;
 size_t uint32_2cpl_to_int32 (unsigned int) ;
 unsigned int uint32_saturate (int ,unsigned int) ;

ntpcal_split
isocal_split_eraweeks(
 int32_t weeks
 )
{




 static const uint16_t bctab[4] = { 85, 130, 17, 62 };

 ntpcal_split res;
 int32_t cc, ci;
 uint32_t sw, cy, Q, sflag;
 sflag = int32_sflag(weeks);
 sw = uint32_saturate(int32_to_uint32_2cpl(weeks), sflag);
 sw = 4u * sw + 2;
 Q = sflag ^ ((sflag ^ sw) / GREGORIAN_CYCLE_WEEKS);
 sw -= Q * GREGORIAN_CYCLE_WEEKS;
 ci = Q % 4u;
 cc = uint32_2cpl_to_int32(Q);




 sw = (sw / 4u) * 157u + bctab[ci];
 cy = sw / 8192u;
 sw = sw % 8192u;




 res.hi = 100*cc + cy;
 res.lo = sw / 157u;

 return res;
}
