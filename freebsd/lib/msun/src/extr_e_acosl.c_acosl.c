
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


 int ACOS_CONST ;
 int BIAS ;
 int LDBL_NBIT ;
 long double P (long double) ;
 long double Q (long double) ;
 long double one ;
 long double pi ;
 long double pio2_hi ;
 double pio2_lo ;
 long double sqrtl (long double) ;

long double
acosl(long double x)
{
 union IEEEl2bits u;
 long double z,p,q,r,w,s,c,df;
 int16_t expsign, expt;
 u.e = x;
 expsign = u.xbits.expsign;
 expt = expsign & 0x7fff;
 if(expt >= BIAS) {
     if(expt==BIAS && ((u.bits.manh&~LDBL_NBIT)|u.bits.manl)==0) {
  if (expsign>0) return 0.0;
  else return pi+2.0*pio2_lo;
     }
     return (x-x)/(x-x);
 }
 if(expt<BIAS-1) {
     if(expt<ACOS_CONST) return pio2_hi+pio2_lo;
     z = x*x;
     p = P(z);
     q = Q(z);
     r = p/q;
     return pio2_hi - (x - (pio2_lo-x*r));
 } else if (expsign<0) {
     z = (one+x)*0.5;
     p = P(z);
     q = Q(z);
     s = sqrtl(z);
     r = p/q;
     w = r*s-pio2_lo;
     return pi - 2.0*(s+w);
 } else {
     z = (one-x)*0.5;
     s = sqrtl(z);
     u.e = s;
     u.bits.manl = 0;
     df = u.e;
     c = (z-df*df)/(s+df);
     p = P(z);
     q = Q(z);
     r = p/q;
     w = r*s+c;
     return 2.0*(df+w);
 }
}
