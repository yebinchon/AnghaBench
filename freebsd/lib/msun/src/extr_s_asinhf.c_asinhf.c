
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 float __ieee754_logf (float) ;
 float __ieee754_sqrtf (float) ;
 float fabsf (float) ;
 float huge ;
 float ln2 ;
 float log1pf (float) ;
 float one ;

float
asinhf(float x)
{
 float t,w;
 int32_t hx,ix;
 GET_FLOAT_WORD(hx,x);
 ix = hx&0x7fffffff;
 if(ix>=0x7f800000) return x+x;
 if(ix< 0x31800000) {
     if(huge+x>one) return x;
 }
 if(ix>0x4d800000) {
     w = __ieee754_logf(fabsf(x))+ln2;
 } else if (ix>0x40000000) {
     t = fabsf(x);
     w = __ieee754_logf((float)2.0*t+one/(__ieee754_sqrtf(x*x+one)+t));
 } else {
     t = x*x;
     w =log1pf(fabsf(x)+t/(one+__ieee754_sqrtf(one+t)));
 }
 if(hx>0) return w; else return -w;
}
