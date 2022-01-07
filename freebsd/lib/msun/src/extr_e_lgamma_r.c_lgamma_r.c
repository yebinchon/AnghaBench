
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 double __ieee754_log (double) ;
 int a0 ;
 int a1 ;
 double a10 ;
 double a11 ;
 int a2 ;
 int a3 ;
 int a4 ;
 int a5 ;
 int a6 ;
 int a7 ;
 int a8 ;
 int a9 ;
 double fabs (double) ;
 double half ;
 double one ;
 double pi ;
 double r1 ;
 double r2 ;
 double r3 ;
 double r4 ;
 double r5 ;
 double r6 ;
 double s0 ;
 double s1 ;
 double s2 ;
 double s3 ;
 double s4 ;
 double s5 ;
 double s6 ;
 double sin_pi (double) ;
 int t0 ;
 int t1 ;
 int t10 ;
 int t11 ;
 double t12 ;
 double t13 ;
 double t14 ;
 int t2 ;
 int t3 ;
 int t4 ;
 int t5 ;
 int t6 ;
 int t7 ;
 int t8 ;
 int t9 ;
 double tc ;
 int tf ;
 int tt ;
 int u0 ;
 int u1 ;
 int u2 ;
 int u3 ;
 int u4 ;
 double u5 ;
 int v1 ;
 int v2 ;
 int v3 ;
 int v4 ;
 double v5 ;
 double vzero ;
 double w0 ;
 double w1 ;
 double w2 ;
 double w3 ;
 double w4 ;
 double w5 ;
 double w6 ;
 double zero ;

double
__ieee754_lgamma_r(double x, int *signgamp)
{
 double nadj,p,p1,p2,p3,q,r,t,w,y,z;
 int32_t hx;
 int i,ix,lx;

 EXTRACT_WORDS(hx,lx,x);


 *signgamp = 1;
 ix = hx&0x7fffffff;
 if(ix>=0x7ff00000) return x*x;


 *signgamp = 1-2*((uint32_t)hx>>31);
 if(ix<0x3c700000) {
     if((ix|lx)==0)
         return one/vzero;
     return -__ieee754_log(fabs(x));
 }


 if(hx<0) {
     *signgamp = 1;
     if(ix>=0x43300000)
  return one/vzero;
     t = sin_pi(x);
     if(t==zero) return one/vzero;
     nadj = __ieee754_log(pi/fabs(t*x));
     if(t<zero) *signgamp = -1;
     x = -x;
 }


 if((((ix-0x3ff00000)|lx)==0)||(((ix-0x40000000)|lx)==0)) r = 0;

 else if(ix<0x40000000) {
     if(ix<=0x3feccccc) {
  r = -__ieee754_log(x);
  if(ix>=0x3FE76944) {y = one-x; i= 0;}
  else if(ix>=0x3FCDA661) {y= x-(tc-one); i=1;}
    else {y = x; i=2;}
     } else {
    r = zero;
         if(ix>=0x3FFBB4C3) {y=2.0-x;i=0;}
         else if(ix>=0x3FF3B4C4) {y=x-tc;i=1;}
  else {y=x-one;i=2;}
     }
     switch(i) {
       case 0:
  z = y*y;
  p1 = a0+z*(a2+z*(a4+z*(a6+z*(a8+z*a10))));
  p2 = z*(a1+z*(a3+z*(a5+z*(a7+z*(a9+z*a11)))));
  p = y*p1+p2;
  r += p-y/2; break;
       case 1:
  z = y*y;
  w = z*y;
  p1 = t0+w*(t3+w*(t6+w*(t9 +w*t12)));
  p2 = t1+w*(t4+w*(t7+w*(t10+w*t13)));
  p3 = t2+w*(t5+w*(t8+w*(t11+w*t14)));
  p = z*p1-(tt-w*(p2+y*p3));
  r += tf + p; break;
       case 2:
  p1 = y*(u0+y*(u1+y*(u2+y*(u3+y*(u4+y*u5)))));
  p2 = one+y*(v1+y*(v2+y*(v3+y*(v4+y*v5))));
  r += p1/p2-y/2;
     }
 }

 else if(ix<0x40200000) {
     i = x;
     y = x-i;
     p = y*(s0+y*(s1+y*(s2+y*(s3+y*(s4+y*(s5+y*s6))))));
     q = one+y*(r1+y*(r2+y*(r3+y*(r4+y*(r5+y*r6)))));
     r = y/2+p/q;
     z = one;
     switch(i) {
     case 7: z *= (y+6);
     case 6: z *= (y+5);
     case 5: z *= (y+4);
     case 4: z *= (y+3);
     case 3: z *= (y+2);
      r += __ieee754_log(z); break;
     }

 } else if (ix < 0x43700000) {
     t = __ieee754_log(x);
     z = one/x;
     y = z*z;
     w = w0+z*(w1+y*(w2+y*(w3+y*(w4+y*(w5+y*w6)))));
     r = (x-half)*(t-one)+w;
 } else

     r = x*(__ieee754_log(x)-one);
 if(hx<0) r = nadj - r;
 return r;
}
