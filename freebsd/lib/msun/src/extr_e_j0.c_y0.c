
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 double __ieee754_j0 (double) ;
 double __ieee754_log (double) ;
 double cos (double) ;
 double invsqrtpi ;
 double one ;
 double pzero (double) ;
 double qzero (double) ;
 int sincos (double,double*,double*) ;
 double sqrt (double) ;
 double tpi ;
 double u00 ;
 double u01 ;
 double u02 ;
 double u03 ;
 double u04 ;
 double u05 ;
 double u06 ;
 double v01 ;
 double v02 ;
 double v03 ;
 double v04 ;
 double vone ;
 double vzero ;
 double zero ;

double
__ieee754_y0(double x)
{
 double z, s,c,ss,cc,u,v;
 int32_t hx,ix,lx;

 EXTRACT_WORDS(hx,lx,x);
        ix = 0x7fffffff&hx;





 if(ix>=0x7ff00000) return vone/(x+x*x);

 if((ix|lx)==0) return -one/vzero;

 if(hx<0) return vzero/vzero;
        if(ix >= 0x40000000) {
                sincos(x, &s, &c);
                ss = s-c;
                cc = s+c;




                if(ix<0x7fe00000) {
                    z = -cos(x+x);
                    if ((s*c)<zero) cc = z/ss;
                    else ss = z/cc;
                }
                if(ix>0x48000000) z = (invsqrtpi*ss)/sqrt(x);
                else {
                    u = pzero(x); v = qzero(x);
                    z = invsqrtpi*(u*ss+v*cc)/sqrt(x);
                }
                return z;
 }
 if(ix<=0x3e400000) {
     return(u00 + tpi*__ieee754_log(x));
 }
 z = x*x;
 u = u00+z*(u01+z*(u02+z*(u03+z*(u04+z*(u05+z*u06)))));
 v = one+z*(v01+z*(v02+z*(v03+z*v04)));
 return(u/v + tpi*(__ieee754_j0(x)*__ieee754_log(x)));
}
