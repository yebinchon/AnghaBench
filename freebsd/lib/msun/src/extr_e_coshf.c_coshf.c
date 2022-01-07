
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 float __ieee754_expf (int ) ;
 float __ldexp_expf (int ,int) ;
 float expm1f (int ) ;
 int fabsf (float) ;
 float half ;
 float huge ;
 float one ;

float
__ieee754_coshf(float x)
{
 float t,w;
 int32_t ix;

 GET_FLOAT_WORD(ix,x);
 ix &= 0x7fffffff;


 if(ix>=0x7f800000) return x*x;


 if(ix<0x3eb17218) {
     t = expm1f(fabsf(x));
     w = one+t;
     if (ix<0x39800000) return one;
     return one+(t*t)/(w+w);
 }


 if (ix < 0x41100000) {
  t = __ieee754_expf(fabsf(x));
  return half*t+half/t;
 }


 if (ix < 0x42b17217) return half*__ieee754_expf(fabsf(x));


 if (ix<=0x42b2d4fc)
     return __ldexp_expf(fabsf(x), -1);


 return huge*huge;
}
