
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int manh; int manl; } ;
struct TYPE_3__ {int expsign; } ;
union IEEEl2bits {long double e; TYPE_2__ bits; TYPE_1__ xbits; } ;
typedef int int16_t ;


 int ASIN_LINEAR ;
 int BIAS ;
 int LDBL_NBIT ;
 long double P (long double) ;
 long double Q (long double) ;
 int THRESH ;
 scalar_t__ fabsl (long double) ;
 scalar_t__ huge ;
 scalar_t__ one ;
 long double pio2_hi ;
 long double pio2_lo ;
 double pio4_hi ;
 long double sqrtl (long double) ;

long double
asinl(long double x)
{
 union IEEEl2bits u;
 long double t=0.0,w,p,q,c,r,s;
 int16_t expsign, expt;
 u.e = x;
 expsign = u.xbits.expsign;
 expt = expsign & 0x7fff;
 if(expt >= BIAS) {
  if(expt==BIAS && ((u.bits.manh&~LDBL_NBIT)|u.bits.manl)==0)

      return x*pio2_hi+x*pio2_lo;
     return (x-x)/(x-x);
 } else if (expt<BIAS-1) {
     if(expt<ASIN_LINEAR) {
  if(huge+x>one) return x;
     }
     t = x*x;
     p = P(t);
     q = Q(t);
     w = p/q;
     return x+x*w;
 }

 w = one-fabsl(x);
 t = w*0.5;
 p = P(t);
 q = Q(t);
 s = sqrtl(t);
 if(u.bits.manh>=THRESH) {
     w = p/q;
     t = pio2_hi-(2.0*(s+s*w)-pio2_lo);
 } else {
     u.e = s;
     u.bits.manl = 0;
     w = u.e;
     c = (t-w*w)/(s+w);
     r = p/q;
     p = 2.0*s*r-(pio2_lo-2.0*c);
     q = pio4_hi-2.0*w;
     t = pio4_hi-(p-q);
 }
 if(expsign>0) return t; else return -t;
}
