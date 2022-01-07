
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 float __ieee754_j0f (float) ;
 float __ieee754_logf (float) ;
 float cosf (float) ;
 float invsqrtpi ;
 float one ;
 float pzerof (float) ;
 float qzerof (float) ;
 int sincosf (float,float*,float*) ;
 float sqrtf (float) ;
 float tpi ;
 float u00 ;
 float u01 ;
 float u02 ;
 float u03 ;
 float u04 ;
 float u05 ;
 float u06 ;
 float v01 ;
 float v02 ;
 float v03 ;
 float v04 ;
 float vone ;
 float vzero ;
 float zero ;

float
__ieee754_y0f(float x)
{
 float z, s,c,ss,cc,u,v;
 int32_t hx,ix;

 GET_FLOAT_WORD(hx,x);
        ix = 0x7fffffff&hx;
 if(ix>=0x7f800000) return vone/(x+x*x);
 if(ix==0) return -one/vzero;
 if(hx<0) return vzero/vzero;
        if(ix >= 0x40000000) {
                sincosf(x, &s, &c);
                ss = s-c;
                cc = s+c;




                if(ix<0x7f000000) {
                    z = -cosf(x+x);
                    if ((s*c)<zero) cc = z/ss;
                    else ss = z/cc;
                }
                if(ix>0x58000000) z = (invsqrtpi*ss)/sqrtf(x);
                else {
                    u = pzerof(x); v = qzerof(x);
                    z = invsqrtpi*(u*ss+v*cc)/sqrtf(x);
                }
                return z;
 }
 if(ix<=0x39000000) {
     return(u00 + tpi*__ieee754_logf(x));
 }
 z = x*x;
 u = u00+z*(u01+z*(u02+z*(u03+z*(u04+z*(u05+z*u06)))));
 v = one+z*(v01+z*(v02+z*(v03+z*v04)));
 return(u/v + tpi*(__ieee754_j0f(x)*__ieee754_logf(x)));
}
