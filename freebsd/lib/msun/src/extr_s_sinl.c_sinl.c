
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sign; int exp; } ;
union IEEEl2bits {long double e; TYPE_1__ bits; } ;


 int ENTERI () ;
 long double M_PI_4 ;
 int RETURNI (long double) ;
 int __ieee754_rem_pio2l (long double,long double*) ;
 long double __kernel_cosl (long double,long double) ;
 long double __kernel_sinl (long double,long double,int) ;

long double
sinl(long double x)
{
 union IEEEl2bits z;
 int e0, s;
 long double y[2];
 long double hi, lo;

 z.e = x;
 s = z.bits.sign;
 z.bits.sign = 0;


 if (z.bits.exp == 0)
  return (x);


 if (z.bits.exp == 32767)
  return ((x - x) / (x - x));

 ENTERI();


 if (z.e < M_PI_4) {
  hi = __kernel_sinl(z.e, 0, 0);
  RETURNI(s ? -hi : hi);
 }

 e0 = __ieee754_rem_pio2l(x, y);
 hi = y[0];
 lo = y[1];

 switch (e0 & 3) {
 case 0:
     hi = __kernel_sinl(hi, lo, 1);
     break;
 case 1:
     hi = __kernel_cosl(hi, lo);
     break;
 case 2:
     hi = - __kernel_sinl(hi, lo, 1);
     break;
 case 3:
     hi = - __kernel_cosl(hi, lo);
     break;
 }

 RETURNI(hi);
}
