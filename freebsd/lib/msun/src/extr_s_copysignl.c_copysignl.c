
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sign; } ;
union IEEEl2bits {long double e; TYPE_1__ bits; } ;



long double
copysignl(long double x, long double y)
{
 union IEEEl2bits ux, uy;

 ux.e = x;
 uy.e = y;
 ux.bits.sign = uy.bits.sign;
 return (ux.e);
}
