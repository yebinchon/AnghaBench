
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int int32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 double __ieee754_j0 (double) ;
 double __ieee754_j1 (double) ;
 double __ieee754_log (double) ;
 double fabs (double) ;
 double invsqrtpi ;
 int one ;
 int sincos (double,double*,double*) ;
 double sqrt (double) ;
 double two ;
 double zero ;

double
__ieee754_jn(int n, double x)
{
 int32_t i,hx,ix,lx, sgn;
 double a, b, c, s, temp, di;
 double z, w;




 EXTRACT_WORDS(hx,lx,x);
 ix = 0x7fffffff&hx;

 if((ix|((u_int32_t)(lx|-lx))>>31)>0x7ff00000) return x+x;
 if(n<0){
  n = -n;
  x = -x;
  hx ^= 0x80000000;
 }
 if(n==0) return(__ieee754_j0(x));
 if(n==1) return(__ieee754_j1(x));
 sgn = (n&1)&(hx>>31);
 x = fabs(x);
 if((ix|lx)==0||ix>=0x7ff00000)
     b = zero;
 else if((double)n<=x) {

     if(ix>=0x52D00000) {
  sincos(x, &s, &c);
  switch(n&3) {
      case 0: temp = c+s; break;
      case 1: temp = -c+s; break;
      case 2: temp = -c-s; break;
      case 3: temp = c-s; break;
  }
  b = invsqrtpi*temp/sqrt(x);
     } else {
         a = __ieee754_j0(x);
         b = __ieee754_j1(x);
         for(i=1;i<n;i++){
      temp = b;
      b = b*((double)(i+i)/x) - a;
      a = temp;
         }
     }
 } else {
     if(ix<0x3e100000) {



  if(n>33)
      b = zero;
  else {
      temp = x*0.5; b = temp;
      for (a=one,i=2;i<=n;i++) {
   a *= (double)i;
   b *= temp;
      }
      b = b/a;
  }
     } else {
  double t,v;
  double q0,q1,h,tmp; int32_t k,m;
  w = (n+n)/(double)x; h = 2.0/(double)x;
  q0 = w; z = w+h; q1 = w*z - 1.0; k=1;
  while(q1<1.0e9) {
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
  tmp = tmp*__ieee754_log(fabs(v*tmp));
  if(tmp<7.09782712893383973096e+02) {
          for(i=n-1,di=(double)(i+i);i>0;i--){
          temp = b;
   b *= di;
   b = b/x - a;
          a = temp;
   di -= two;
           }
  } else {
          for(i=n-1,di=(double)(i+i);i>0;i--){
          temp = b;
   b *= di;
   b = b/x - a;
          a = temp;
   di -= two;

   if(b>1e100) {
       a /= b;
       t /= b;
       b = one;
   }
           }
  }
  z = __ieee754_j0(x);
  w = __ieee754_j1(x);
  if (fabs(z) >= fabs(w))
      b = (t*z/b);
  else
      b = (t*w/a);
     }
 }
 if(sgn==1) return -b; else return b;
}
