
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exp; size_t sign; int manh; int manl; } ;
union IEEEl2bits {long double e; TYPE_1__ bits; } ;


 int GETFRAC (int,int) ;
 int HIBITS ;
 int LDBL_MANT_DIG ;
 int LDBL_MAX_EXP ;
 long double* zero ;

long double
modfl(long double x, long double *iptr)
{
 union IEEEl2bits ux;
 int e;

 ux.e = x;
 e = ux.bits.exp - LDBL_MAX_EXP + 1;
 if (e < HIBITS) {
  if (e < 0) {
   *iptr = zero[ux.bits.sign];
   return (x);
  } else {
   if ((GETFRAC(ux.bits.manh, HIBITS - 1 - e) |
        ux.bits.manl) == 0) {
    *iptr = x;
    return (zero[ux.bits.sign]);
   } else {

    ux.bits.manh >>= HIBITS - 1 - e;
    ux.bits.manh <<= HIBITS - 1 - e;
    ux.bits.manl = 0;
    *iptr = ux.e;
    return (x - ux.e);
   }
  }
 } else if (e >= LDBL_MANT_DIG - 1) {
  *iptr = x;
  if (x != x)
   return (x);
  return (zero[ux.bits.sign]);
 } else {
  if (GETFRAC(ux.bits.manl, LDBL_MANT_DIG - 1 - e) == 0) {

   *iptr = x;
   return (zero[ux.bits.sign]);
  } else {

   ux.bits.manl >>= LDBL_MANT_DIG - 1 - e;
   ux.bits.manl <<= LDBL_MANT_DIG - 1 - e;
   *iptr = ux.e;
   return (x - ux.e);
  }
 }
}
