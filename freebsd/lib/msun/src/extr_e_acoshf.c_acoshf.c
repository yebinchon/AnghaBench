
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 float __ieee754_logf (float) ;
 float __ieee754_sqrtf (float) ;
 float ln2 ;
 float log1pf (float) ;
 float one ;

float
__ieee754_acoshf(float x)
{
 float t;
 int32_t hx;
 GET_FLOAT_WORD(hx,x);
 if(hx<0x3f800000) {
     return (x-x)/(x-x);
 } else if(hx >=0x4d800000) {
     if(hx >=0x7f800000) {
         return x+x;
     } else
  return __ieee754_logf(x)+ln2;
 } else if (hx==0x3f800000) {
     return 0.0;
 } else if (hx > 0x40000000) {
     t=x*x;
     return __ieee754_logf((float)2.0*x-one/(x+__ieee754_sqrtf(t-one)));
 } else {
     t = x-one;
     return log1pf(t+__ieee754_sqrtf((float)2.0*t+t*t));
 }
}
