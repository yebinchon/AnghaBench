
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exp; } ;
union IEEEd2bits {double d; TYPE_1__ bits; } ;



int
__isfinite(double d)
{
 union IEEEd2bits u;

 u.d = d;
 return (u.bits.exp != 2047);
}
