
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int BIAS ;
 int ENTERI () ;
 int GET_LDBL_EXPSIGN (int,long double) ;
 int LDBL_MANT_DIG ;
 int RETURNI (double) ;
 long double S11 ;
 long double S13 ;
 long double S15 ;
 long double S17 ;
 double S19 ;
 double S21 ;
 double S23 ;
 double S25 ;
 long double S3 ;
 long double S5 ;
 long double S7 ;
 long double S9 ;
 scalar_t__ fabsl (long double) ;
 double hexpl (scalar_t__) ;
 int k_hexpl (scalar_t__,long double*,long double*) ;
 scalar_t__ o_threshold ;
 long double shuge ;

long double
sinhl(long double x)
{
 long double hi,lo,x2,x4;



 double s;
 int16_t ix,jx;

 GET_LDBL_EXPSIGN(jx,x);
 ix = jx&0x7fff;


 if(ix>=0x7fff) return x+x;

 ENTERI();

 s = 1;
 if (jx<0) s = -1;


 if (ix<0x4005) {
     if (ix<BIAS-(LDBL_MANT_DIG+1)/2)
  if(shuge+x>1) RETURNI(x);
     if (ix<0x3fff) {
  x2 = x*x;
     }
     k_hexpl(fabsl(x), &hi, &lo);
     RETURNI(s*(lo - 0.25/(hi + lo) + hi));
 }


 if (fabsl(x) <= o_threshold)
     RETURNI(s*hexpl(fabsl(x)));


 return x*shuge;
}
