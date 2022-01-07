
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int int32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 int GET_HIGH_WORD (int,double) ;
 int SET_HIGH_WORD (double,int) ;
 int SET_LOW_WORD (double,int ) ;
 double ivln2hi ;
 double ivln2lo ;
 double k_log1p (double) ;
 double two54 ;
 double vzero ;
 double zero ;

double
__ieee754_log2(double x)
{
 double f,hfsq,hi,lo,r,val_hi,val_lo,w,y;
 int32_t i,k,hx;
 u_int32_t lx;

 EXTRACT_WORDS(hx,lx,x);

 k=0;
 if (hx < 0x00100000) {
     if (((hx&0x7fffffff)|lx)==0)
  return -two54/vzero;
     if (hx<0) return (x-x)/zero;
     k -= 54; x *= two54;
     GET_HIGH_WORD(hx,x);
 }
 if (hx >= 0x7ff00000) return x+x;
 if (hx == 0x3ff00000 && lx == 0)
     return zero;
 k += (hx>>20)-1023;
 hx &= 0x000fffff;
 i = (hx+0x95f64)&0x100000;
 SET_HIGH_WORD(x,hx|(i^0x3ff00000));
 k += (i>>20);
 y = (double)k;
 f = x - 1.0;
 hfsq = 0.5*f*f;
 r = k_log1p(f);
 hi = f - hfsq;
 SET_LOW_WORD(hi,0);
 lo = (f - hi) - hfsq + r;
 val_hi = hi*ivln2hi;
 val_lo = (lo+hi)*ivln2lo + lo*ivln2hi;


 w = y + val_hi;
 val_lo += (y - w) + val_hi;
 val_hi = w;

 return val_lo + val_hi;
}
