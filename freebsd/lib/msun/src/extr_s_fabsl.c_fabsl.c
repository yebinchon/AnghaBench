
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sign; } ;
union IEEEl2bits {long double e; TYPE_1__ bits; } ;



long double
fabsl(long double x)
{
 union IEEEl2bits u;

 u.e = x;
 u.bits.sign = 0;
 return (u.e);
}
