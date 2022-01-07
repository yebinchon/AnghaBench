
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
 float one ;
 float shuge ;

float
__ieee754_sinhf(float x)
{
 float t,h;
 int32_t ix,jx;

 GET_FLOAT_WORD(jx,x);
 ix = jx&0x7fffffff;


 if(ix>=0x7f800000) return x+x;

 h = 0.5;
 if (jx<0) h = -h;

 if (ix < 0x41100000) {
     if (ix<0x39800000)
  if(shuge+x>one) return x;
     t = expm1f(fabsf(x));
     if(ix<0x3f800000) return h*((float)2.0*t-t*t/(t+one));
     return h*(t+t/(t+one));
 }


 if (ix < 0x42b17217) return h*__ieee754_expf(fabsf(x));


 if (ix<=0x42b2d4fc)
     return h*2.0F*__ldexp_expf(fabsf(x), -1);


 return x*shuge;
}
