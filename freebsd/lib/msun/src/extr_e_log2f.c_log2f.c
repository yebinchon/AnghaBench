
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef float float_t ;


 int GET_FLOAT_WORD (int,float) ;
 int SET_FLOAT_WORD (float,int) ;
 float ivln2hi ;
 float ivln2lo ;
 float k_log1pf (float) ;
 float two25 ;
 float vzero ;
 float zero ;

float
__ieee754_log2f(float x)
{
 float f,hfsq,hi,lo,r,y;
 int32_t i,k,hx;

 GET_FLOAT_WORD(hx,x);

 k=0;
 if (hx < 0x00800000) {
     if ((hx&0x7fffffff)==0)
  return -two25/vzero;
     if (hx<0) return (x-x)/zero;
     k -= 25; x *= two25;
     GET_FLOAT_WORD(hx,x);
 }
 if (hx >= 0x7f800000) return x+x;
 if (hx == 0x3f800000)
     return zero;
 k += (hx>>23)-127;
 hx &= 0x007fffff;
 i = (hx+(0x4afb0d))&0x800000;
 SET_FLOAT_WORD(x,hx|(i^0x3f800000));
 k += (i>>23);
 y = (float)k;
 f = x - (float)1.0;
 hfsq = (float)0.5*f*f;
 r = k_log1pf(f);
 if (sizeof(float_t) > sizeof(float))
  return (r - hfsq + f) * ((float_t)ivln2lo + ivln2hi) + y;

 hi = f - hfsq;
 GET_FLOAT_WORD(hx,hi);
 SET_FLOAT_WORD(hi,hx&0xfffff000);
 lo = (f - hi) - hfsq + r;
 return (lo+hi)*ivln2lo + lo*ivln2hi + hi*ivln2hi + y;
}
