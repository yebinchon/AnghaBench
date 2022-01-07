
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 int SET_FLOAT_WORD (float,int) ;
 float huge ;

float
floorf(float x)
{
 int32_t i0,j0;
 u_int32_t i;
 GET_FLOAT_WORD(i0,x);
 j0 = ((i0>>23)&0xff)-0x7f;
 if(j0<23) {
     if(j0<0) {
  if(huge+x>(float)0.0) {
      if(i0>=0) {i0=0;}
      else if((i0&0x7fffffff)!=0)
   { i0=0xbf800000;}
  }
     } else {
  i = (0x007fffff)>>j0;
  if((i0&i)==0) return x;
  if(huge+x>(float)0.0) {
      if(i0<0) i0 += (0x00800000)>>j0;
      i0 &= (~i);
  }
     }
 } else {
     if(j0==0x80) return x+x;
     else return x;
 }
 SET_FLOAT_WORD(x,i0);
 return x;
}
