
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int expsign; } ;
union IEEEl2bits {long double e; TYPE_1__ xbits; } ;
typedef int uint32_t ;


 int BIAS ;
 int LDBL_MANT_DIG ;
 int LDBL_MAX_EXP ;
 scalar_t__* shift ;
 long double* zero ;

long double
rintl(long double x)
{
 union IEEEl2bits u;
 uint32_t expsign;
 int ex, sign;

 u.e = x;
 expsign = u.xbits.expsign;
 ex = expsign & 0x7fff;

 if (ex >= BIAS + LDBL_MANT_DIG - 1) {
  if (ex == BIAS + LDBL_MAX_EXP)
   return (x + x);
  return (x);
 }
 sign = expsign >> 15;
 x += shift[sign];
 x -= shift[sign];





 if (ex < BIAS && x == 0.0L)
  return (zero[sign]);

 return (x);
}
