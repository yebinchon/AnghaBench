
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int int32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 int SET_HIGH_WORD (double,int) ;
 double huge ;
 double log1p (double) ;
 double one ;
 double zero ;

double
__ieee754_atanh(double x)
{
 double t;
 int32_t hx,ix;
 u_int32_t lx;
 EXTRACT_WORDS(hx,lx,x);
 ix = hx&0x7fffffff;
 if ((ix|((lx|(-lx))>>31))>0x3ff00000)
     return (x-x)/(x-x);
 if(ix==0x3ff00000)
     return x/zero;
 if(ix<0x3e300000&&(huge+x)>zero) return x;
 SET_HIGH_WORD(x,ix);
 if(ix<0x3fe00000) {
     t = x+x;
     t = 0.5*log1p(t+t*x/(one-x));
 } else
     t = 0.5*log1p((x+x)/(one-x));
 if(hx>=0) return t; else return -t;
}
