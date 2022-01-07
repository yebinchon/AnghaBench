
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int int32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 double __ieee754_log (double) ;
 double ln2 ;
 double log1p (double) ;
 double one ;
 double sqrt (double) ;

double
__ieee754_acosh(double x)
{
 double t;
 int32_t hx;
 u_int32_t lx;
 EXTRACT_WORDS(hx,lx,x);
 if(hx<0x3ff00000) {
     return (x-x)/(x-x);
 } else if(hx >=0x41b00000) {
     if(hx >=0x7ff00000) {
         return x+x;
     } else
  return __ieee754_log(x)+ln2;
 } else if(((hx-0x3ff00000)|lx)==0) {
     return 0.0;
 } else if (hx > 0x40000000) {
     t=x*x;
     return __ieee754_log(2.0*x-one/(x+sqrt(t-one)));
 } else {
     t = x-one;
     return log1p(t+sqrt(2.0*t+t*t));
 }
}
