
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 float fabsf (float) ;
 float two25 ;

float
logbf(float x)
{
 int32_t ix;
 GET_FLOAT_WORD(ix,x);
 ix &= 0x7fffffff;
 if(ix==0) return (float)-1.0/fabsf(x);
 if(ix>=0x7f800000) return x*x;
 if(ix<0x00800000) {
  x *= two25;
  GET_FLOAT_WORD(ix,x);
  ix &= 0x7fffffff;
  return (float) ((ix>>23)-127-25);
 } else
  return (float) ((ix>>23)-127);
}
