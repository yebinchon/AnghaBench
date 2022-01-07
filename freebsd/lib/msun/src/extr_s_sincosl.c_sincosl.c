
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sign; int exp; } ;
union IEEEl2bits {long double e; TYPE_1__ bits; } ;


 int ENTERV () ;
 long double M_PI_4 ;
 int RETURNV () ;
 int __ieee754_rem_pio2l (long double,long double*) ;
 int __kernel_sincosl (long double,long double,int,long double*,long double*) ;

void
sincosl(long double x, long double *sn, long double *cs)
{
 union IEEEl2bits z;
 int e0, sgn;
 long double y[2];

 z.e = x;
 sgn = z.bits.sign;
 z.bits.sign = 0;

 ENTERV();


 if (z.e < M_PI_4) {




  if (z.bits.exp == 0) {
   *sn = x;
   *cs = 1;
  } else
   __kernel_sincosl(x, 0, 0, sn, cs);
  RETURNV();
 }


 if (z.bits.exp == 32767) {
  *sn = x - x;
  *cs = x - x;
  RETURNV();
 }


 e0 = __ieee754_rem_pio2l(x, y);

 switch (e0 & 3) {
 case 0:
  __kernel_sincosl(y[0], y[1], 1, sn, cs);
  break;
 case 1:
  __kernel_sincosl(y[0], y[1], 1, cs, sn);
  *cs = -*cs;
  break;
 case 2:
  __kernel_sincosl(y[0], y[1], 1, sn, cs);
  *sn = -*sn;
  *cs = -*cs;
  break;
 default:
  __kernel_sincosl(y[0], y[1], 1, cs, sn);
  *sn = -*sn;
 }

 RETURNV();
}
