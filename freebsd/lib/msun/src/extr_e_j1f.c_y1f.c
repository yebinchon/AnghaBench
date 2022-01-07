
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 float* U0 ;
 float* V0 ;
 float __ieee754_j1f (float) ;
 float __ieee754_logf (float) ;
 float cosf (float) ;
 float invsqrtpi ;
 float one ;
 float ponef (float) ;
 float qonef (float) ;
 int sincosf (float,float*,float*) ;
 float sqrtf (float) ;
 float tpi ;
 float vone ;
 float vzero ;
 float zero ;

float
__ieee754_y1f(float x)
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
                ss = -s-c;
                cc = s-c;
                if(ix<0x7f000000) {
                    z = cosf(x+x);
                    if ((s*c)>zero) cc = z/ss;
                    else ss = z/cc;
                }
                if(ix>0x58000000) z = (invsqrtpi*ss)/sqrtf(x);
                else {
                    u = ponef(x); v = qonef(x);
                    z = invsqrtpi*(u*ss+v*cc)/sqrtf(x);
                }
                return z;
        }
        if(ix<=0x33000000) {
            return(-tpi/x);
        }
        z = x*x;
        u = U0[0]+z*(U0[1]+z*(U0[2]+z*(U0[3]+z*U0[4])));
        v = one+z*(V0[0]+z*(V0[1]+z*(V0[2]+z*(V0[3]+z*V0[4]))));
        return(x*(u/v) + tpi*(__ieee754_j1f(x)*__ieee754_logf(x)-one/x));
}
