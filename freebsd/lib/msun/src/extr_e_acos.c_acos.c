
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int int32_t ;


 int GET_HIGH_WORD (int,double) ;
 int GET_LOW_WORD (int,double) ;
 int SET_LOW_WORD (double,int ) ;
 double one ;
 double pS0 ;
 double pS1 ;
 double pS2 ;
 double pS3 ;
 double pS4 ;
 double pS5 ;
 double pi ;
 double pio2_hi ;
 double pio2_lo ;
 double qS1 ;
 double qS2 ;
 double qS3 ;
 double qS4 ;
 double sqrt (double) ;

double
__ieee754_acos(double x)
{
 double z,p,q,r,w,s,c,df;
 int32_t hx,ix;
 GET_HIGH_WORD(hx,x);
 ix = hx&0x7fffffff;
 if(ix>=0x3ff00000) {
     u_int32_t lx;
     GET_LOW_WORD(lx,x);
     if(((ix-0x3ff00000)|lx)==0) {
  if(hx>0) return 0.0;
  else return pi+2.0*pio2_lo;
     }
     return (x-x)/(x-x);
 }
 if(ix<0x3fe00000) {
     if(ix<=0x3c600000) return pio2_hi+pio2_lo;
     z = x*x;
     p = z*(pS0+z*(pS1+z*(pS2+z*(pS3+z*(pS4+z*pS5)))));
     q = one+z*(qS1+z*(qS2+z*(qS3+z*qS4)));
     r = p/q;
     return pio2_hi - (x - (pio2_lo-x*r));
 } else if (hx<0) {
     z = (one+x)*0.5;
     p = z*(pS0+z*(pS1+z*(pS2+z*(pS3+z*(pS4+z*pS5)))));
     q = one+z*(qS1+z*(qS2+z*(qS3+z*qS4)));
     s = sqrt(z);
     r = p/q;
     w = r*s-pio2_lo;
     return pi - 2.0*(s+w);
 } else {
     z = (one-x)*0.5;
     s = sqrt(z);
     df = s;
     SET_LOW_WORD(df,0);
     c = (z-df*df)/(s+df);
     p = z*(pS0+z*(pS1+z*(pS2+z*(pS3+z*(pS4+z*pS5)))));
     q = one+z*(qS1+z*(qS2+z*(qS3+z*qS4)));
     r = p/q;
     w = r*s+c;
     return 2.0*(df+w);
 }
}
