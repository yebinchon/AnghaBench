
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_HIGH_WORD (int,double) ;
 double R02 ;
 double R03 ;
 double R04 ;
 double R05 ;
 double S01 ;
 double S02 ;
 double S03 ;
 double S04 ;
 double cos (double) ;
 double fabs (double) ;
 double huge ;
 double invsqrtpi ;
 double one ;
 double pzero (double) ;
 double qrtr ;
 double qzero (double) ;
 int sincos (double,double*,double*) ;
 double sqrt (double) ;
 double zero ;

double
__ieee754_j0(double x)
{
 double z, s,c,ss,cc,r,u,v;
 int32_t hx,ix;

 GET_HIGH_WORD(hx,x);
 ix = hx&0x7fffffff;
 if(ix>=0x7ff00000) return one/(x*x);
 x = fabs(x);
 if(ix >= 0x40000000) {
  sincos(x, &s, &c);
  ss = s-c;
  cc = s+c;
  if(ix<0x7fe00000) {
      z = -cos(x+x);
      if ((s*c)<zero) cc = z/ss;
      else ss = z/cc;
  }




  if(ix>0x48000000) z = (invsqrtpi*cc)/sqrt(x);
  else {
      u = pzero(x); v = qzero(x);
      z = invsqrtpi*(u*cc-v*ss)/sqrt(x);
  }
  return z;
 }
 if(ix<0x3f200000) {
     if(huge+x>one) {
         if(ix<0x3e400000) return one;
         else return one - x*x/4;
     }
 }
 z = x*x;
 r = z*(R02+z*(R03+z*(R04+z*R05)));
 s = one+z*(S01+z*(S02+z*(S03+z*S04)));
 if(ix < 0x3FF00000) {
     return one + z*((r/s)-qrtr);
 } else {
     u = x/2;
     return((one+u)*(one-u)+z*(r/s));
 }
}
