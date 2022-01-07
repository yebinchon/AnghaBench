
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int BIAS ;
 int ENTERI () ;
 int EXP_TINY ;
 int GET_LDBL_EXPSIGN (int,long double) ;
 int RETURNI (long double) ;
 int SET_LDBL_EXPSIGN (long double,int) ;
 int fabsl (long double) ;
 long double huge ;
 double log1pl (long double) ;
 long double one ;
 long double zero ;

long double
atanhl(long double x)
{
 long double t;
 uint16_t hx, ix;

 ENTERI();
 GET_LDBL_EXPSIGN(hx, x);
 ix = hx & 0x7fff;
 if (ix >= 0x3fff)
     RETURNI(fabsl(x) == 1 ? x / zero : (x - x) / (x - x));
 if (ix < BIAS + EXP_TINY && (huge + x) > zero)
     RETURNI(x);
 SET_LDBL_EXPSIGN(x, ix);
 if (ix < 0x3ffe) {
     t = x+x;
     t = 0.5*log1pl(t+t*x/(one-x));
 } else
     t = 0.5*log1pl((x+x)/(one-x));
 RETURNI((hx & 0x8000) == 0 ? t : -t);
}
