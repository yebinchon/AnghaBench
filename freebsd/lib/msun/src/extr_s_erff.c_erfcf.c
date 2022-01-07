
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 int SET_FLOAT_WORD (float,int) ;
 float erx ;
 float expf (float) ;
 float fabsf (float) ;
 float half ;
 float one ;
 float pa0 ;
 float pa1 ;
 float pa2 ;
 float pa3 ;
 float pp0 ;
 float pp1 ;
 float pp2 ;
 float qa1 ;
 float qa2 ;
 float qa3 ;
 float qq1 ;
 float qq2 ;
 float qq3 ;
 float ra0 ;
 float ra1 ;
 float ra2 ;
 float ra3 ;
 float rb0 ;
 float rb1 ;
 float rb2 ;
 float sa1 ;
 float sa2 ;
 float sa3 ;
 float sb1 ;
 float sb2 ;
 float sb3 ;
 float tiny ;
 float two ;

float
erfcf(float x)
{
 int32_t hx,ix;
 float R,S,P,Q,s,y,z,r;
 GET_FLOAT_WORD(hx,x);
 ix = hx&0x7fffffff;
 if(ix>=0x7f800000) {

     return (float)(((u_int32_t)hx>>31)<<1)+one/x;
 }

 if(ix < 0x3f580000) {
     if(ix < 0x33800000)
  return one-x;
     z = x*x;
     r = pp0+z*(pp1+z*pp2);
     s = one+z*(qq1+z*(qq2+z*qq3));
     y = r/s;
     if(hx < 0x3e800000) {
  return one-(x+x*y);
     } else {
  r = x*y;
  r += (x-half);
         return half - r ;
     }
 }
 if(ix < 0x3fa00000) {
     s = fabsf(x)-one;
     P = pa0+s*(pa1+s*(pa2+s*pa3));
     Q = one+s*(qa1+s*(qa2+s*qa3));
     if(hx>=0) {
         z = one-erx; return z - P/Q;
     } else {
  z = erx+P/Q; return one+z;
     }
 }
 if (ix < 0x41300000) {
     x = fabsf(x);
      s = one/(x*x);
     if(ix< 0x4036db8c) {
  R=ra0+s*(ra1+s*(ra2+s*ra3));
  S=one+s*(sa1+s*(sa2+s*sa3));
     } else {
  if(hx<0&&ix>=0x40a00000) return two-tiny;
  R=rb0+s*(rb1+s*rb2);
  S=one+s*(sb1+s*(sb2+s*sb3));
     }
     SET_FLOAT_WORD(z,hx&0xffffe000);
     r = expf(-z*z-0.5625F)*expf((z-x)*(z+x)+R/S);
     if(hx>0) return r/x; else return two-r/x;
 } else {
     if(hx>0) return tiny*tiny; else return two-tiny;
 }
}
