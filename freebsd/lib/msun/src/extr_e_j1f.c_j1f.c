
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 float cosf (float) ;
 float fabsf (float) ;
 float huge ;
 float invsqrtpi ;
 float one ;
 float ponef (float) ;
 float qonef (float) ;
 float r00 ;
 float r01 ;
 float r02 ;
 float r03 ;
 float s01 ;
 float s02 ;
 float s03 ;
 float s04 ;
 float s05 ;
 int sincosf (float,float*,float*) ;
 float sqrtf (float) ;
 float zero ;

float
__ieee754_j1f(float x)
{
 float z, s,c,ss,cc,r,u,v,y;
 int32_t hx,ix;

 GET_FLOAT_WORD(hx,x);
 ix = hx&0x7fffffff;
 if(ix>=0x7f800000) return one/x;
 y = fabsf(x);
 if(ix >= 0x40000000) {
  sincosf(y, &s, &c);
  ss = -s-c;
  cc = s-c;
  if(ix<0x7f000000) {
      z = cosf(y+y);
      if ((s*c)>zero) cc = z/ss;
      else ss = z/cc;
  }




  if(ix>0x58000000) z = (invsqrtpi*cc)/sqrtf(y);
  else {
      u = ponef(y); v = qonef(y);
      z = invsqrtpi*(u*cc-v*ss)/sqrtf(y);
  }
  if(hx<0) return -z;
  else return z;
 }
 if(ix<0x39000000) {
     if(huge+x>one) return (float)0.5*x;
 }
 z = x*x;
 r = z*(r00+z*(r01+z*(r02+z*r03)));
 s = one+z*(s01+z*(s02+z*(s03+z*(s04+z*s05))));
 r *= x;
 return(x*(float)0.5+r/s);
}
