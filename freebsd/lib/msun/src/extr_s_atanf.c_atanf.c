
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 float* aT ;
 float* atanhi ;
 float* atanlo ;
 float fabsf (float) ;
 float huge ;
 float one ;

float
atanf(float x)
{
 float w,s1,s2,z;
 int32_t ix,hx,id;

 GET_FLOAT_WORD(hx,x);
 ix = hx&0x7fffffff;
 if(ix>=0x4c800000) {
     if(ix>0x7f800000)
  return x+x;
     if(hx>0) return atanhi[3]+*(volatile float *)&atanlo[3];
     else return -atanhi[3]-*(volatile float *)&atanlo[3];
 } if (ix < 0x3ee00000) {
     if (ix < 0x39800000) {
  if(huge+x>one) return x;
     }
     id = -1;
 } else {
 x = fabsf(x);
 if (ix < 0x3f980000) {
     if (ix < 0x3f300000) {
  id = 0; x = ((float)2.0*x-one)/((float)2.0+x);
     } else {
  id = 1; x = (x-one)/(x+one);
     }
 } else {
     if (ix < 0x401c0000) {
  id = 2; x = (x-(float)1.5)/(one+(float)1.5*x);
     } else {
  id = 3; x = -(float)1.0/x;
     }
 }}

 z = x*x;
 w = z*z;

 s1 = z*(aT[0]+w*(aT[2]+w*aT[4]));
 s2 = w*(aT[1]+w*aT[3]);
 if (id<0) return x - x*(s1+s2);
 else {
     z = atanhi[id] - ((x*(s1+s2) - atanlo[id]) - x);
     return (hx<0)? -z:z;
 }
}
