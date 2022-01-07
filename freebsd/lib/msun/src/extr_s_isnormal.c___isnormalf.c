
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exp; } ;
union IEEEf2bits {float f; TYPE_1__ bits; } ;



int
__isnormalf(float f)
{
 union IEEEf2bits u;

 u.f = f;
 return (u.bits.exp != 0 && u.bits.exp != 255);
}
