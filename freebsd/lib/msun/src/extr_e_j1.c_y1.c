
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 double* U0 ;
 double* V0 ;
 double __ieee754_j1 (double) ;
 double __ieee754_log (double) ;
 double cos (double) ;
 double invsqrtpi ;
 double one ;
 double pone (double) ;
 double qone (double) ;
 int sincos (double,double*,double*) ;
 double sqrt (double) ;
 double tpi ;
 double vone ;
 double vzero ;
 double zero ;

double
__ieee754_y1(double x)
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
                ss = -s-c;
                cc = s-c;
                if(ix<0x7fe00000) {
                    z = cos(x+x);
                    if ((s*c)>zero) cc = z/ss;
                    else ss = z/cc;
                }
                if(ix>0x48000000) z = (invsqrtpi*ss)/sqrt(x);
                else {
                    u = pone(x); v = qone(x);
                    z = invsqrtpi*(u*ss+v*cc)/sqrt(x);
                }
                return z;
        }
        if(ix<=0x3c900000) {
            return(-tpi/x);
        }
        z = x*x;
        u = U0[0]+z*(U0[1]+z*(U0[2]+z*(U0[3]+z*U0[4])));
        v = one+z*(V0[0]+z*(V0[1]+z*(V0[2]+z*(V0[3]+z*V0[4]))));
        return(x*(u/v) + tpi*(__ieee754_j1(x)*__ieee754_log(x)-one/x));
}
