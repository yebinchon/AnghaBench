
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exp; int manl; int manh; } ;
union IEEEl2bits {long double e; TYPE_1__ bits; } ;


 int FP_INFINITE ;
 int FP_NAN ;
 int FP_NORMAL ;
 int FP_SUBNORMAL ;
 int FP_ZERO ;
 int mask_nbit_l (union IEEEl2bits) ;

int
__fpclassifyl(long double e)
{
 union IEEEl2bits u;

 u.e = e;
 if (u.bits.exp == 0) {
  if ((u.bits.manl | u.bits.manh) == 0)
   return (FP_ZERO);
  return (FP_SUBNORMAL);
 }
 mask_nbit_l(u);







 if (u.bits.exp == 32767) {
  if ((u.bits.manl | u.bits.manh) == 0)
   return (FP_INFINITE);
  return (FP_NAN);
 }

 return (FP_NORMAL);
}
