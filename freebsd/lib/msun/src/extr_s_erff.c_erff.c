
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 int SET_FLOAT_WORD (float,int) ;
 float efx ;
 float efx8 ;
 float erx ;
 float expf (float) ;
 float fabsf (float) ;
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

float
erff(float x)
{
 int32_t hx,ix,i;
 float R,S,P,Q,s,y,z,r;
 GET_FLOAT_WORD(hx,x);
 ix = hx&0x7fffffff;
 if(ix>=0x7f800000) {
     i = ((u_int32_t)hx>>31)<<1;
     return (float)(1-i)+one/x;
 }

 if(ix < 0x3f580000) {
     if(ix < 0x38800000) {
         if (ix < 0x04000000)
      return (8*x+efx8*x)/8;
  return x + efx*x;
     }
     z = x*x;
     r = pp0+z*(pp1+z*pp2);
     s = one+z*(qq1+z*(qq2+z*qq3));
     y = r/s;
     return x + x*y;
 }
 if(ix < 0x3fa00000) {
     s = fabsf(x)-one;
     P = pa0+s*(pa1+s*(pa2+s*pa3));
     Q = one+s*(qa1+s*(qa2+s*qa3));
     if(hx>=0) return erx + P/Q; else return -erx - P/Q;
 }
 if (ix >= 0x40800000) {
     if(hx>=0) return one-tiny; else return tiny-one;
 }
 x = fabsf(x);
  s = one/(x*x);
 if(ix< 0x4036db8c) {
     R=ra0+s*(ra1+s*(ra2+s*ra3));
     S=one+s*(sa1+s*(sa2+s*sa3));
 } else {
     R=rb0+s*(rb1+s*rb2);
     S=one+s*(sb1+s*(sb2+s*sb3));
 }
 SET_FLOAT_WORD(z,hx&0xffffe000);
 r = expf(-z*z-0.5625F)*expf((z-x)*(z+x)+R/S);
 if(hx>=0) return one-r/x; else return r/x-one;
}
