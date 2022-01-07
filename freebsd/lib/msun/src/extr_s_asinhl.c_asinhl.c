
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int BIAS ;
 int ENTERI () ;
 int EXP_LARGE ;
 int EXP_TINY ;
 int GET_LDBL_EXPSIGN (int,long double) ;
 int RETURNI (long double) ;
 long double fabsl (long double) ;
 long double huge ;
 long double ln2 ;
 long double log1pl (long double) ;
 long double logl (double) ;
 long double one ;
 long double sqrtl (long double) ;

long double
asinhl(long double x)
{
 long double t, w;
 uint16_t hx, ix;

 ENTERI();
 GET_LDBL_EXPSIGN(hx, x);
 ix = hx & 0x7fff;
 if (ix >= 0x7fff) RETURNI(x+x);
 if (ix < BIAS + EXP_TINY) {
     if (huge + x > one) RETURNI(x);
 }
 if (ix >= BIAS + EXP_LARGE) {
     w = logl(fabsl(x))+ln2;
 } else if (ix >= 0x4000) {
     t = fabsl(x);
     w = logl(2.0*t+one/(sqrtl(x*x+one)+t));
 } else {
     t = x*x;
     w =log1pl(fabsl(x)+t/(one+sqrtl(one+t)));
 }
 RETURNI((hx & 0x8000) == 0 ? w : -w);
}
