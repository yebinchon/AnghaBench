
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 int SET_FLOAT_WORD (float,int) ;
 float huge ;
 float log1pf (float) ;
 float one ;
 float zero ;

float
__ieee754_atanhf(float x)
{
 float t;
 int32_t hx,ix;
 GET_FLOAT_WORD(hx,x);
 ix = hx&0x7fffffff;
 if (ix>0x3f800000)
     return (x-x)/(x-x);
 if(ix==0x3f800000)
     return x/zero;
 if(ix<0x31800000&&(huge+x)>zero) return x;
 SET_FLOAT_WORD(x,ix);
 if(ix<0x3f000000) {
     t = x+x;
     t = (float)0.5*log1pf(t+t*x/(one-x));
 } else
     t = (float)0.5*log1pf((x+x)/(one-x));
 if(hx>=0) return t; else return -t;
}
