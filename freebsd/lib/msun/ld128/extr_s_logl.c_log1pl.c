
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long uint64_t ;
typedef int int16_t ;


 int DOPRINT_START (long double*) ;
 long double E (int) ;
 int ENTERI () ;
 int EXTRACT_LDBL128_WORDS (int,long long,long long,long double) ;
 int FE_UNDERFLOW ;
 scalar_t__ F_hi (int) ;
 double F_lo (int) ;
 long double G (int) ;
 long double H (int) ;
 int INSERT_LDBL128_WORDS (long double,int,long long,long long) ;
 int L2I ;
 double P10 ;
 double P11 ;
 double P12 ;
 double P13 ;
 double P14 ;
 long double P2 ;
 long double P3 ;
 long double P4 ;
 long double P5 ;
 long double P6 ;
 long double P7 ;
 double P8 ;
 double P9 ;
 int RETURN2PI (long double,long double) ;
 int RETURNP (long double) ;
 int SET_LDBL_EXPSIGN (long double,int) ;
 int _3sumF (long double,long double,scalar_t__) ;
 int breakpoint () ;
 scalar_t__ fetestexcept (int ) ;
 double ln2_hi ;
 double ln2_lo ;
 int zero ;

long double
log1pl(long double x)
{
 long double d, d_hi, f_lo, val_hi, val_lo;
 long double f_hi, twopminusk;
 double d_lo, dd, dk;
 uint64_t lx, llx;
 int i, k;
 int16_t ax, hx;

 DOPRINT_START(&x);
 EXTRACT_LDBL128_WORDS(hx, lx, llx, x);
 if (hx < 0x3fff) {
  ax = hx & 0x7fff;
  if (ax >= 0x3fff) {
   if (ax == 0x3fff && (lx | llx) == 0)
    RETURNP(-1 / zero);

   RETURNP((x - x) / (x - x));
  }
  if (ax <= 0x3f8d) {
   if ((int)x == 0)
    RETURNP(x);
  }
  f_hi = 1;
  f_lo = x;
 } else if (hx >= 0x7fff) {
  RETURNP(x + x);
 } else if (hx < 0x40e1) {
  f_hi = x;
  f_lo = 1;
 } else {
  f_hi = x;
  f_lo = 0;
 }
 ENTERI();
 x = f_hi + f_lo;
 f_lo = (f_hi - x) + f_lo;

 EXTRACT_LDBL128_WORDS(hx, lx, llx, x);
 k = -16383;

 k += hx;
 dk = k;

 SET_LDBL_EXPSIGN(x, 0x3fff);
 twopminusk = 1;
 SET_LDBL_EXPSIGN(twopminusk, 0x7ffe - (hx & 0x7fff));
 f_lo *= twopminusk;

 i = (lx + (1LL << (L2I - 2))) >> (L2I - 1);
 if (0)
  d_hi = x * G(i) - 1;
 else {



  long double x_hi;
  double x_lo;

  INSERT_LDBL128_WORDS(x_hi, 0x3fff, lx,
      llx & 0xffffffffff000000ULL);
  x_lo = x - x_hi;
  d_hi = x_hi * G(i) - 1 + x_lo * G(i);

 }
 d_lo = f_lo * G(i);
 d = d_hi + d_lo;
 d_lo = d_hi - d + d_lo;
 d_hi = d;

 dd = (double)d;
 val_lo = d * d * d * (P3 +
     d * (P4 + d * (P5 + d * (P6 + d * (P7 + d * (P8 +
     dd * (P9 + dd * (P10 + dd * (P11 + dd * (P12 + dd * (P13 +
     dd * P14))))))))))) + (F_lo(i) + dk * ln2_lo + d_lo) + d * d * P2;
 val_hi = d_hi;





 _3sumF(val_hi, val_lo, F_hi(i) + dk * ln2_hi);
 RETURN2PI(val_hi, val_lo);
}
