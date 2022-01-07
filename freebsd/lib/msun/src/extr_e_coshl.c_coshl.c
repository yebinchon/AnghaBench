
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int BIAS ;
 long double C10 ;
 long double C12 ;
 long double C14 ;
 long double C16 ;
 double C18 ;
 long double C2 ;
 double C20 ;
 double C22 ;
 double C24 ;
 double C26 ;
 long double C4 ;
 long double C6 ;
 long double C8 ;
 int ENTERI () ;
 int GET_LDBL_EXPSIGN (int,long double) ;
 int LDBL_MANT_DIG ;
 int RETURNI (long double) ;
 scalar_t__ fabsl (long double) ;
 long double hexpl (scalar_t__) ;
 long double huge ;
 int k_hexpl (scalar_t__,long double*,long double*) ;
 scalar_t__ o_threshold ;
 long double tiny ;

long double
coshl(long double x)
{
 long double hi,lo,x2,x4;



 uint16_t ix;

 GET_LDBL_EXPSIGN(ix,x);
 ix &= 0x7fff;


 if(ix>=0x7fff) return x*x;

 ENTERI();


 if(ix<0x3fff) {
     if (ix<BIAS-(LDBL_MANT_DIG+1)/2)
  RETURNI(1+tiny);
     x2 = x*x;
 }


 if (ix < 0x4005) {
     k_hexpl(fabsl(x), &hi, &lo);
     RETURNI(lo + 0.25/(hi + lo) + hi);
 }


 if (fabsl(x) <= o_threshold)
     RETURNI(hexpl(fabsl(x)));


 RETURNI(huge*huge);
}
