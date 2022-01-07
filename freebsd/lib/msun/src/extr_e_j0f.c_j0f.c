
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 float R02 ;
 float R03 ;
 float R04 ;
 float R05 ;
 float S01 ;
 float S02 ;
 float S03 ;
 float S04 ;
 float cosf (float) ;
 float fabsf (float) ;
 float huge ;
 float invsqrtpi ;
 float one ;
 float pzerof (float) ;
 float qrtr ;
 float qzerof (float) ;
 int sincosf (float,float*,float*) ;
 float sqrtf (float) ;
 float zero ;

float
__ieee754_j0f(float x)
{
 float z, s,c,ss,cc,r,u,v;
 int32_t hx,ix;

 GET_FLOAT_WORD(hx,x);
 ix = hx&0x7fffffff;
 if(ix>=0x7f800000) return one/(x*x);
 x = fabsf(x);
 if(ix >= 0x40000000) {
  sincosf(x, &s, &c);
  ss = s-c;
  cc = s+c;
  if(ix<0x7f000000) {
      z = -cosf(x+x);
      if ((s*c)<zero) cc = z/ss;
      else ss = z/cc;
  }




  if(ix>0x58000000) z = (invsqrtpi*cc)/sqrtf(x);
  else {
      u = pzerof(x); v = qzerof(x);
      z = invsqrtpi*(u*cc-v*ss)/sqrtf(x);
  }
  return z;
 }
 if(ix<0x3b000000) {
     if(huge+x>one) {
         if(ix<0x39800000) return one;
         else return one - x*x/4;
     }
 }
 z = x*x;
 r = z*(R02+z*(R03+z*(R04+z*R05)));
 s = one+z*(S01+z*(S02+z*(S03+z*S04)));
 if(ix < 0x3F800000) {
     return one + z*((r/s)-qrtr);
 } else {
     u = x/2;
     return((one+u)*(one-u)+z*(r/s));
 }
}
