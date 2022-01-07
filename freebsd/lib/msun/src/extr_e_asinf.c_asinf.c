
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 float fabsf (float) ;
 float huge ;
 float one ;
 float pS0 ;
 float pS1 ;
 float pS2 ;
 float pio2 ;
 float qS1 ;
 double sqrt (float) ;

float
__ieee754_asinf(float x)
{
 double s;
 float t,w,p,q;
 int32_t hx,ix;
 GET_FLOAT_WORD(hx,x);
 ix = hx&0x7fffffff;
 if(ix>=0x3f800000) {
     if(ix==0x3f800000)
  return x*pio2;
     return (x-x)/(x-x);
 } else if (ix<0x3f000000) {
     if(ix<0x39800000) {
  if(huge+x>one) return x;
     }
     t = x*x;
     p = t*(pS0+t*(pS1+t*pS2));
     q = one+t*qS1;
     w = p/q;
     return x+x*w;
 }

 w = one-fabsf(x);
 t = w*(float)0.5;
 p = t*(pS0+t*(pS1+t*pS2));
 q = one+t*qS1;
 s = sqrt(t);
 w = p/q;
 t = pio2-2.0*(s+s*w);
 if(hx>0) return t; else return -t;
}
