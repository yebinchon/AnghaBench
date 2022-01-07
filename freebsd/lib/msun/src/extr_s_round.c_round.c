
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int GET_HIGH_WORD (int,double) ;
 double floor (double) ;

double
round(double x)
{
 double t;
 uint32_t hx;

 GET_HIGH_WORD(hx, x);
 if ((hx & 0x7fffffff) == 0x7ff00000)
  return (x + x);

 if (!(hx & 0x80000000)) {
  t = floor(x);
  if (t - x <= -0.5)
   t += 1;
  return (t);
 } else {
  t = floor(-x);
  if (t + x <= -0.5)
   t += 1;
  return (-t);
 }
}
