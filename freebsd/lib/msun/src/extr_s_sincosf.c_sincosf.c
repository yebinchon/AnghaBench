
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 int __ieee754_rem_pio2f (float,double*) ;
 int __kernel_sincosdf (double,float*,float*) ;
 float p1pio2 ;
 float p2pio2 ;
 float p3pio2 ;
 float p4pio2 ;

void
sincosf(float x, float *sn, float *cs)
{
 float c, s;
 double y;
 int32_t n, hx, ix;

 GET_FLOAT_WORD(hx, x);
 ix = hx & 0x7fffffff;

 if (ix <= 0x3f490fda) {
  if (ix < 0x39800000) {
   if ((int)x == 0) {
    *sn = x;
    *cs = 1;
    return;
   }
  }
  __kernel_sincosdf(x, sn, cs);
  return;
 }

 if (ix <= 0x407b53d1) {
  if (ix <= 0x4016cbe3) {
   if (hx > 0) {
    __kernel_sincosdf(x - p1pio2, cs, sn);
    *cs = -*cs;
   } else {
    __kernel_sincosdf(x + p1pio2, cs, sn);
    *sn = -*sn;
   }
  } else {
   if (hx > 0)
    __kernel_sincosdf(x - p2pio2, sn, cs);
   else
    __kernel_sincosdf(x + p2pio2, sn, cs);
   *sn = -*sn;
   *cs = -*cs;
  }
  return;
 }

 if (ix <= 0x40e231d5) {
  if (ix <= 0x40afeddf) {
   if (hx > 0) {
    __kernel_sincosdf(x - p3pio2, cs, sn);
    *sn = -*sn;
   } else {
    __kernel_sincosdf(x + p3pio2, cs, sn);
    *cs = -*cs;
   }
  } else {
   if (hx > 0)
    __kernel_sincosdf(x - p4pio2, sn, cs);
   else
    __kernel_sincosdf(x + p4pio2, sn, cs);
  }
  return;
 }


 if (ix >= 0x7f800000) {
  *sn = x - x;
  *cs = x - x;
  return;
 }


 n = __ieee754_rem_pio2f(x, &y);
 __kernel_sincosdf(y, &s, &c);

 switch(n & 3) {
 case 0:
  *sn = s;
  *cs = c;
  break;
 case 1:
  *sn = c;
  *cs = -s;
  break;
 case 2:
  *sn = -s;
  *cs = -c;
  break;
 default:
  *sn = -c;
  *cs = s;
 }
}
