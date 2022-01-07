
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int16_t ;


 int DOPRINT_START (long double*) ;
 long double E (int) ;
 int ENTERI () ;
 int EXTRACT_LDBL80_WORDS (int,int,long double) ;
 int FE_UNDERFLOW ;
 scalar_t__ F_hi (int) ;
 long double F_lo (int) ;
 long double G (int) ;
 long double H (int) ;
 int L2I ;
 long double P2 ;
 long double P3 ;
 long double P4 ;
 long double P5 ;
 long double P6 ;
 long double P7 ;
 long double P8 ;
 int RETURN2PI (long double,long double) ;
 int RETURNP (long double) ;
 int SET_FLOAT_WORD (float,int) ;
 int SET_LDBL_EXPSIGN (long double,int) ;
 int _3sumF (long double,long double,scalar_t__) ;
 int breakpoint () ;
 scalar_t__ fetestexcept (int ) ;
 long double ln2_hi ;
 long double ln2_lo ;
 int zero ;

long double
log1pl(long double x)
{
 long double d, d_hi, d_lo, dk, f_lo, val_hi, val_lo, z;
 long double f_hi, twopminusk;
 uint64_t ix, lx;
 int i, k;
 int16_t ax, hx;

 DOPRINT_START(&x);
 EXTRACT_LDBL80_WORDS(hx, lx, x);
 if (hx < 0x3fff) {
  ax = hx & 0x7fff;
  if (ax >= 0x3fff) {
   if (ax == 0x3fff && lx == 0x8000000000000000ULL)
    RETURNP(-1 / zero);

   RETURNP((x - x) / (x - x));
  }
  if (ax <= 0x3fbe) {
   if ((int)x == 0)
    RETURNP(x);
  }
  f_hi = 1;
  f_lo = x;
 } else if (hx >= 0x7fff) {
  RETURNP(x + x);



 } else if (hx < 0x407f) {
  f_hi = x;
  f_lo = 1;
 } else {
  f_hi = x;
  f_lo = 0;
 }
 ENTERI();
 x = f_hi + f_lo;
 f_lo = (f_hi - x) + f_lo;

 EXTRACT_LDBL80_WORDS(hx, lx, x);
 k = -16383;

 k += hx;
 ix = lx & 0x7fffffffffffffffULL;
 dk = k;

 SET_LDBL_EXPSIGN(x, 0x3fff);
 twopminusk = 1;
 SET_LDBL_EXPSIGN(twopminusk, 0x7ffe - (hx & 0x7fff));
 f_lo *= twopminusk;

 i = (ix + (1LL << (L2I - 2))) >> (L2I - 1);
 if (0)
  d_hi = x * G(i) - 1;
 else {



  long double x_hi, x_lo;
  float fx_hi;

  SET_FLOAT_WORD(fx_hi, (lx >> 40) | 0x3f800000);
  x_hi = fx_hi;
  x_lo = x - x_hi;
  d_hi = x_hi * G(i) - 1 + x_lo * G(i);

 }
 d_lo = f_lo * G(i);
 d = d_hi + d_lo;
 d_lo = d_hi - d + d_lo;
 d_hi = d;

 z = d * d;
 val_lo = z * d * z * (z * (d * P8 + P7) + (d * P6 + P5)) +
     (F_lo(i) + dk * ln2_lo + d_lo + z * d * (d * P4 + P3)) + z * P2;
 val_hi = d_hi;





 _3sumF(val_hi, val_lo, F_hi(i) + dk * ln2_hi);
 RETURN2PI(val_hi, val_lo);
}
