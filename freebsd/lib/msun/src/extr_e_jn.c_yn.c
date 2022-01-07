
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int int32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 int GET_HIGH_WORD (int,double) ;
 double __ieee754_y0 (double) ;
 int __ieee754_y1 (double) ;
 double invsqrtpi ;
 double one ;
 int sincos (double,double*,double*) ;
 double sqrt (double) ;
 double vzero ;
 double zero ;

double
__ieee754_yn(int n, double x)
{
 int32_t i,hx,ix,lx;
 int32_t sign;
 double a, b, c, s, temp;

 EXTRACT_WORDS(hx,lx,x);
 ix = 0x7fffffff&hx;

 if((ix|((u_int32_t)(lx|-lx))>>31)>0x7ff00000) return x+x;

 if((ix|lx)==0) return -one/vzero;

 if(hx<0) return vzero/vzero;
 sign = 1;
 if(n<0){
  n = -n;
  sign = 1 - ((n&1)<<1);
 }
 if(n==0) return(__ieee754_y0(x));
 if(n==1) return(sign*__ieee754_y1(x));
 if(ix==0x7ff00000) return zero;
 if(ix>=0x52D00000) {
  sincos(x, &s, &c);
  switch(n&3) {
      case 0: temp = s-c; break;
      case 1: temp = -s-c; break;
      case 2: temp = -s+c; break;
      case 3: temp = s+c; break;
  }
  b = invsqrtpi*temp/sqrt(x);
 } else {
     u_int32_t high;
     a = __ieee754_y0(x);
     b = __ieee754_y1(x);

     GET_HIGH_WORD(high,b);
     for(i=1;i<n&&high!=0xfff00000;i++){
  temp = b;
  b = ((double)(i+i)/x)*b - a;
  GET_HIGH_WORD(high,b);
  a = temp;
     }
 }
 if(sign>0) return b; else return -b;
}
