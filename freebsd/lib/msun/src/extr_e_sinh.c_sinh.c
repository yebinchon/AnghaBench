
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_HIGH_WORD (int,double) ;
 double __ieee754_exp (int ) ;
 double __ldexp_exp (int ,int) ;
 double expm1 (int ) ;
 int fabs (double) ;
 double one ;
 double shuge ;

double
__ieee754_sinh(double x)
{
 double t,h;
 int32_t ix,jx;


 GET_HIGH_WORD(jx,x);
 ix = jx&0x7fffffff;


 if(ix>=0x7ff00000) return x+x;

 h = 0.5;
 if (jx<0) h = -h;

 if (ix < 0x40360000) {
     if (ix<0x3e300000)
  if(shuge+x>one) return x;
     t = expm1(fabs(x));
     if(ix<0x3ff00000) return h*(2.0*t-t*t/(t+one));
     return h*(t+t/(t+one));
 }


 if (ix < 0x40862E42) return h*__ieee754_exp(fabs(x));


 if (ix<=0x408633CE)
     return h*2.0*__ldexp_exp(fabs(x), -1);


 return x*shuge;
}
