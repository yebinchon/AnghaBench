
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int BIAS ;
 int ENTERI () ;
 int EXP_LARGE ;
 int GET_LDBL_EXPSIGN (int,long double) ;
 int RETURNI (double) ;
 double ln2 ;
 double log1pl (long double) ;
 double logl (double) ;
 long double one ;
 long double sqrtl (double) ;

long double
acoshl(long double x)
{
 long double t;
 int16_t hx;

 ENTERI();
 GET_LDBL_EXPSIGN(hx, x);
 if (hx < 0x3fff) {
     RETURNI((x-x)/(x-x));
 } else if (hx >= BIAS + EXP_LARGE) {
     if (hx >= 0x7fff) {
         RETURNI(x+x);
     } else
  RETURNI(logl(x)+ln2);
 } else if (hx == 0x3fff && x == 1) {
     RETURNI(0.0);
 } else if (hx >= 0x4000) {
     t=x*x;
     RETURNI(logl(2.0*x-one/(x+sqrtl(t-one))));
 } else {
     t = x-one;
     RETURNI(log1pl(t+sqrtl(2.0*t+t*t)));
 }
}
