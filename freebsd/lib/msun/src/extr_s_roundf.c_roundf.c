
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int GET_FLOAT_WORD (int,float) ;
 float floorf (float) ;

float
roundf(float x)
{
 float t;
 uint32_t hx;

 GET_FLOAT_WORD(hx, x);
 if ((hx & 0x7fffffff) == 0x7f800000)
  return (x + x);

 if (!(hx & 0x80000000)) {
  t = floorf(x);
  if (t - x <= -0.5F)
   t += 1;
  return (t);
 } else {
  t = floorf(-x);
  if (t + x <= -0.5F)
   t += 1;
  return (-t);
 }
}
