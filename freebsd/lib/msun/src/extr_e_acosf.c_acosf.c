
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 int SET_FLOAT_WORD (float,int) ;
 float one ;
 float pS0 ;
 float pS1 ;
 float pS2 ;
 float pi ;
 float pio2_hi ;
 float pio2_lo ;
 float qS1 ;
 float sqrtf (float) ;

float
__ieee754_acosf(float x)
{
 float z,p,q,r,w,s,c,df;
 int32_t hx,ix;
 GET_FLOAT_WORD(hx,x);
 ix = hx&0x7fffffff;
 if(ix>=0x3f800000) {
     if(ix==0x3f800000) {
  if(hx>0) return 0.0;
  else return pi+(float)2.0*pio2_lo;
     }
     return (x-x)/(x-x);
 }
 if(ix<0x3f000000) {
     if(ix<=0x32800000) return pio2_hi+pio2_lo;
     z = x*x;
     p = z*(pS0+z*(pS1+z*pS2));
     q = one+z*qS1;
     r = p/q;
     return pio2_hi - (x - (pio2_lo-x*r));
 } else if (hx<0) {
     z = (one+x)*(float)0.5;
     p = z*(pS0+z*(pS1+z*pS2));
     q = one+z*qS1;
     s = sqrtf(z);
     r = p/q;
     w = r*s-pio2_lo;
     return pi - (float)2.0*(s+w);
 } else {
     int32_t idf;
     z = (one-x)*(float)0.5;
     s = sqrtf(z);
     df = s;
     GET_FLOAT_WORD(idf,df);
     SET_FLOAT_WORD(df,idf&0xfffff000);
     c = (z-df*df)/(s+df);
     p = z*(pS0+z*(pS1+z*pS2));
     q = one+z*qS1;
     r = p/q;
     w = r*s+c;
     return (float)2.0*(df+w);
 }
}
