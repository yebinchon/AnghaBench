
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exp; scalar_t__ man; } ;
union IEEEf2bits {float f; TYPE_1__ bits; } ;


 int FP_INFINITE ;
 int FP_NAN ;
 int FP_NORMAL ;
 int FP_SUBNORMAL ;
 int FP_ZERO ;

int
__fpclassifyf(float f)
{
 union IEEEf2bits u;

 u.f = f;
 if (u.bits.exp == 0) {
  if (u.bits.man == 0)
   return (FP_ZERO);
  return (FP_SUBNORMAL);
 }
 if (u.bits.exp == 255) {
  if (u.bits.man == 0)
   return (FP_INFINITE);
  return (FP_NAN);
 }
 return (FP_NORMAL);
}
