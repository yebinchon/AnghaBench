
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 float __ieee754_logf (float) ;
 int a0 ;
 int a1 ;
 int a2 ;
 int a3 ;
 float a4 ;
 float a5 ;
 float fabsf (float) ;
 float half ;
 float one ;
 float pi ;
 float r1 ;
 float r2 ;
 float r3 ;
 float s0 ;
 float s1 ;
 float s2 ;
 float s3 ;
 float sin_pif (float) ;
 int t0 ;
 float t1 ;
 int t2 ;
 int t3 ;
 int t4 ;
 int t5 ;
 int t6 ;
 float t7 ;
 float tc ;
 int tf ;
 int u0 ;
 int u1 ;
 float u2 ;
 int v1 ;
 int v2 ;
 float v3 ;
 float vzero ;
 float w0 ;
 float w1 ;
 float w2 ;
 float zero ;

float
__ieee754_lgammaf_r(float x, int *signgamp)
{
 float nadj,p,p1,p2,q,r,t,w,y,z;
 int32_t hx;
 int i,ix;

 GET_FLOAT_WORD(hx,x);


 *signgamp = 1;
 ix = hx&0x7fffffff;
 if(ix>=0x7f800000) return x*x;


 *signgamp = 1-2*((uint32_t)hx>>31);
 if(ix<0x32000000) {
     if(ix==0)
         return one/vzero;
     return -__ieee754_logf(fabsf(x));
 }


 if(hx<0) {
     *signgamp = 1;
     if(ix>=0x4b000000)
  return one/vzero;
     t = sin_pif(x);
     if(t==zero) return one/vzero;
     nadj = __ieee754_logf(pi/fabsf(t*x));
     if(t<zero) *signgamp = -1;
     x = -x;
 }


 if (ix==0x3f800000||ix==0x40000000) r = 0;

 else if(ix<0x40000000) {
     if(ix<=0x3f666666) {
  r = -__ieee754_logf(x);
  if(ix>=0x3f3b4a20) {y = one-x; i= 0;}
  else if(ix>=0x3e6d3308) {y= x-(tc-one); i=1;}
    else {y = x; i=2;}
     } else {
    r = zero;
         if(ix>=0x3fdda618) {y=2-x;i=0;}
         else if(ix>=0x3F9da620) {y=x-tc;i=1;}
  else {y=x-one;i=2;}
     }
     switch(i) {
       case 0:
  z = y*y;
  p1 = a0+z*(a2+z*a4);
  p2 = z*(a1+z*(a3+z*a5));
  p = y*p1+p2;
  r += p-y/2; break;
       case 1:
  p = t0+y*t1+y*y*(t2+y*(t3+y*(t4+y*(t5+y*(t6+y*t7)))));
  r += tf + p; break;
       case 2:
  p1 = y*(u0+y*(u1+y*u2));
  p2 = one+y*(v1+y*(v2+y*v3));
  r += p1/p2-y/2;
     }
 }

 else if(ix<0x41000000) {
     i = x;
     y = x-i;
     p = y*(s0+y*(s1+y*(s2+y*s3)));
     q = one+y*(r1+y*(r2+y*r3));
     r = y/2+p/q;
     z = one;
     switch(i) {
     case 7: z *= (y+6);
     case 6: z *= (y+5);
     case 5: z *= (y+4);
     case 4: z *= (y+3);
     case 3: z *= (y+2);
      r += __ieee754_logf(z); break;
     }

 } else if (ix < 0x4d000000) {
     t = __ieee754_logf(x);
     z = one/x;
     y = z*z;
     w = w0+z*(w1+y*w2);
     r = (x-half)*(t-one)+w;
 } else

     r = x*(__ieee754_logf(x)-one);
 if(hx<0) r = nadj - r;
 return r;
}
