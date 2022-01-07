
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef int int32_t ;


 int GET_HIGH_WORD (int,double) ;
 int GET_LOW_WORD (scalar_t__,double) ;
 double* aT ;
 double* atanhi ;
 double* atanlo ;
 double fabs (double) ;
 double huge ;
 double one ;

double
atan(double x)
{
 double w,s1,s2,z;
 int32_t ix,hx,id;

 GET_HIGH_WORD(hx,x);
 ix = hx&0x7fffffff;
 if(ix>=0x44100000) {
     u_int32_t low;
     GET_LOW_WORD(low,x);
     if(ix>0x7ff00000||
  (ix==0x7ff00000&&(low!=0)))
  return x+x;
     if(hx>0) return atanhi[3]+*(volatile double *)&atanlo[3];
     else return -atanhi[3]-*(volatile double *)&atanlo[3];
 } if (ix < 0x3fdc0000) {
     if (ix < 0x3e400000) {
  if(huge+x>one) return x;
     }
     id = -1;
 } else {
 x = fabs(x);
 if (ix < 0x3ff30000) {
     if (ix < 0x3fe60000) {
  id = 0; x = (2.0*x-one)/(2.0+x);
     } else {
  id = 1; x = (x-one)/(x+one);
     }
 } else {
     if (ix < 0x40038000) {
  id = 2; x = (x-1.5)/(one+1.5*x);
     } else {
  id = 3; x = -1.0/x;
     }
 }}

 z = x*x;
 w = z*z;

 s1 = z*(aT[0]+w*(aT[2]+w*(aT[4]+w*(aT[6]+w*(aT[8]+w*aT[10])))));
 s2 = w*(aT[1]+w*(aT[3]+w*(aT[5]+w*(aT[7]+w*aT[9]))));
 if (id<0) return x - x*(s1+s2);
 else {
     z = atanhi[id] - ((x*(s1+s2) - atanlo[id]) - x);
     return (hx<0)? -z:z;
 }
}
