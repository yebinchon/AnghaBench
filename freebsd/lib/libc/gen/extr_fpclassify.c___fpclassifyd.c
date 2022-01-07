
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exp; int manl; int manh; } ;
union IEEEd2bits {double d; TYPE_1__ bits; } ;


 int FP_INFINITE ;
 int FP_NAN ;
 int FP_NORMAL ;
 int FP_SUBNORMAL ;
 int FP_ZERO ;

int
__fpclassifyd(double d)
{
 union IEEEd2bits u;

 u.d = d;
 if (u.bits.exp == 0) {
  if ((u.bits.manl | u.bits.manh) == 0)
   return (FP_ZERO);
  return (FP_SUBNORMAL);
 }
 if (u.bits.exp == 2047) {
  if ((u.bits.manl | u.bits.manh) == 0)
   return (FP_INFINITE);
  return (FP_NAN);
 }
 return (FP_NORMAL);
}
