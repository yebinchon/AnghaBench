
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 float __ieee754_j0f (float) ;
 float __ieee754_j1f (float) ;
 float __ieee754_logf (float) ;
 float fabsf (float) ;
 int one ;
 float two ;
 float zero ;

float
__ieee754_jnf(int n, float x)
{
 int32_t i,hx,ix, sgn;
 float a, b, temp, di;
 float z, w;




 GET_FLOAT_WORD(hx,x);
 ix = 0x7fffffff&hx;

 if(ix>0x7f800000) return x+x;
 if(n<0){
  n = -n;
  x = -x;
  hx ^= 0x80000000;
 }
 if(n==0) return(__ieee754_j0f(x));
 if(n==1) return(__ieee754_j1f(x));
 sgn = (n&1)&(hx>>31);
 x = fabsf(x);
 if(ix==0||ix>=0x7f800000)
     b = zero;
 else if((float)n<=x) {

     a = __ieee754_j0f(x);
     b = __ieee754_j1f(x);
     for(i=1;i<n;i++){
  temp = b;
  b = b*((float)(i+i)/x) - a;
  a = temp;
     }
 } else {
     if(ix<0x30800000) {



  if(n>33)
      b = zero;
  else {
      temp = x*(float)0.5; b = temp;
      for (a=one,i=2;i<=n;i++) {
   a *= (float)i;
   b *= temp;
      }
      b = b/a;
  }
     } else {
  float t,v;
  float q0,q1,h,tmp; int32_t k,m;
  w = (n+n)/(float)x; h = (float)2.0/(float)x;
  q0 = w; z = w+h; q1 = w*z - (float)1.0; k=1;
  while(q1<(float)1.0e9) {
   k += 1; z += h;
   tmp = z*q1 - q0;
   q0 = q1;
   q1 = tmp;
  }
  m = n+n;
  for(t=zero, i = 2*(n+k); i>=m; i -= 2) t = one/(i/x-t);
  a = t;
  b = one;
  tmp = n;
  v = two/x;
  tmp = tmp*__ieee754_logf(fabsf(v*tmp));
  if(tmp<(float)8.8721679688e+01) {
          for(i=n-1,di=(float)(i+i);i>0;i--){
          temp = b;
   b *= di;
   b = b/x - a;
          a = temp;
   di -= two;
           }
  } else {
          for(i=n-1,di=(float)(i+i);i>0;i--){
          temp = b;
   b *= di;
   b = b/x - a;
          a = temp;
   di -= two;

   if(b>(float)1e10) {
       a /= b;
       t /= b;
       b = one;
   }
           }
  }
  z = __ieee754_j0f(x);
  w = __ieee754_j1f(x);
  if (fabsf(z) >= fabsf(w))
      b = (t*z/b);
  else
      b = (t*w/a);
     }
 }
 if(sgn==1) return -b; else return b;
}
