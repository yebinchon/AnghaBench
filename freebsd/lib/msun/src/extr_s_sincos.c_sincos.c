
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_HIGH_WORD (int,double) ;
 int __ieee754_rem_pio2 (double,double*) ;
 int __kernel_sincos (double,double,int,double*,double*) ;

void
sincos(double x, double *sn, double *cs)
{
 double y[2];
 int32_t n, ix;


 GET_HIGH_WORD(ix, x);


 ix &= 0x7fffffff;
 if (ix <= 0x3fe921fb) {
  if (ix < 0x3e400000) {
   if ((int)x == 0) {
    *sn = x;
    *cs = 1;
    return;
   }
  }
  __kernel_sincos(x, 0, 0, sn, cs);
  return;
 }


 if (ix >= 0x7ff00000) {
  *sn = x - x;
  *cs = x - x;
  return;
 }


 n = __ieee754_rem_pio2(x, y);

 switch(n & 3) {
 case 0:
  __kernel_sincos(y[0], y[1], 1, sn, cs);
  break;
 case 1:
  __kernel_sincos(y[0], y[1], 1, cs, sn);
  *cs = -*cs;
  break;
 case 2:
  __kernel_sincos(y[0], y[1], 1, sn, cs);
  *sn = -*sn;
  *cs = -*cs;
  break;
 default:
  __kernel_sincos(y[0], y[1], 1, cs, sn);
  *sn = -*sn;
 }
}
