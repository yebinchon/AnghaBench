
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exp; scalar_t__ manl; scalar_t__ manh; } ;
union IEEEl2bits {long double e; TYPE_1__ bits; } ;


 int mask_nbit_l (union IEEEl2bits) ;

int
__isnanl(long double e)
{
 union IEEEl2bits u;

 u.e = e;
 mask_nbit_l(u);
 return (u.bits.exp == 32767 && (u.bits.manl != 0 || u.bits.manh != 0));
}
