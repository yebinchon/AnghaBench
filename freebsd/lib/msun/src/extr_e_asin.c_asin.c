
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int int32_t ;


 int GET_HIGH_WORD (int,double) ;
 int GET_LOW_WORD (int,double) ;
 int SET_LOW_WORD (double,int ) ;
 double fabs (double) ;
 double huge ;
 double one ;
 double pS0 ;
 double pS1 ;
 double pS2 ;
 double pS3 ;
 double pS4 ;
 double pS5 ;
 double pio2_hi ;
 double pio2_lo ;
 double pio4_hi ;
 double qS1 ;
 double qS2 ;
 double qS3 ;
 double qS4 ;
 double sqrt (double) ;

double
__ieee754_asin(double x)
{
 double t=0.0,w,p,q,c,r,s;
 int32_t hx,ix;
 GET_HIGH_WORD(hx,x);
 ix = hx&0x7fffffff;
 if(ix>= 0x3ff00000) {
     u_int32_t lx;
     GET_LOW_WORD(lx,x);
     if(((ix-0x3ff00000)|lx)==0)

  return x*pio2_hi+x*pio2_lo;
     return (x-x)/(x-x);
 } else if (ix<0x3fe00000) {
     if(ix<0x3e500000) {
  if(huge+x>one) return x;
     }
     t = x*x;
     p = t*(pS0+t*(pS1+t*(pS2+t*(pS3+t*(pS4+t*pS5)))));
     q = one+t*(qS1+t*(qS2+t*(qS3+t*qS4)));
     w = p/q;
     return x+x*w;
 }

 w = one-fabs(x);
 t = w*0.5;
 p = t*(pS0+t*(pS1+t*(pS2+t*(pS3+t*(pS4+t*pS5)))));
 q = one+t*(qS1+t*(qS2+t*(qS3+t*qS4)));
 s = sqrt(t);
 if(ix>=0x3FEF3333) {
     w = p/q;
     t = pio2_hi-(2.0*(s+s*w)-pio2_lo);
 } else {
     w = s;
     SET_LOW_WORD(w,0);
     c = (t-w*w)/(s+w);
     r = p/q;
     p = 2.0*s*r-(pio2_lo-2.0*c);
     q = pio4_hi-2.0*w;
     t = pio4_hi-(p-q);
 }
 if(hx>0) return t; else return -t;
}
