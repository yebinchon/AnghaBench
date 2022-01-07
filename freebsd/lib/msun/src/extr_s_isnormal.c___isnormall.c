
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exp; } ;
union IEEEl2bits {long double e; TYPE_1__ bits; } ;



int
__isnormall(long double e)
{
 union IEEEl2bits u;

 u.e = e;
 return (u.bits.exp != 0 && u.bits.exp != 32767);
}
