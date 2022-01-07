
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 int __ieee754_rem_pio2f (float,double*) ;
 float __kernel_tandf (double,int) ;
 float t1pio2 ;
 float t2pio2 ;
 float t3pio2 ;
 float t4pio2 ;

float
tanf(float x)
{
 double y;
 int32_t n, hx, ix;

 GET_FLOAT_WORD(hx,x);
 ix = hx & 0x7fffffff;

 if(ix <= 0x3f490fda) {
     if(ix<0x39800000)
  if(((int)x)==0) return x;
     return __kernel_tandf(x,1);
 }
 if(ix<=0x407b53d1) {
     if(ix<=0x4016cbe3)
  return __kernel_tandf(x + (hx>0 ? -t1pio2 : t1pio2), -1);
     else
  return __kernel_tandf(x + (hx>0 ? -t2pio2 : t2pio2), 1);
 }
 if(ix<=0x40e231d5) {
     if(ix<=0x40afeddf)
  return __kernel_tandf(x + (hx>0 ? -t3pio2 : t3pio2), -1);
     else
  return __kernel_tandf(x + (hx>0 ? -t4pio2 : t4pio2), 1);
 }


 else if (ix>=0x7f800000) return x-x;


 else {
     n = __ieee754_rem_pio2f(x,&y);

     return __kernel_tandf(y,1-((n&1)<<1));
 }
}
