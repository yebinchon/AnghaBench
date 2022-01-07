
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 int SET_FLOAT_WORD (float,int) ;
 float one ;

float
modff(float x, float *iptr)
{
 int32_t i0,j0;
 u_int32_t i;
 GET_FLOAT_WORD(i0,x);
 j0 = ((i0>>23)&0xff)-0x7f;
 if(j0<23) {
     if(j0<0) {
         SET_FLOAT_WORD(*iptr,i0&0x80000000);
  return x;
     } else {
  i = (0x007fffff)>>j0;
  if((i0&i)==0) {
      u_int32_t ix;
      *iptr = x;
      GET_FLOAT_WORD(ix,x);
      SET_FLOAT_WORD(x,ix&0x80000000);
      return x;
  } else {
      SET_FLOAT_WORD(*iptr,i0&(~i));
      return x - *iptr;
  }
     }
 } else {
     u_int32_t ix;
     *iptr = x*one;
     if (x != x)
  return x;
     GET_FLOAT_WORD(ix,x);
     SET_FLOAT_WORD(x,ix&0x80000000);
     return x;
 }
}
