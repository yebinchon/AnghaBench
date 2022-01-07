
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double modf (float,double*) ;

float
modff(float x, float *iptr)
{
  double result, temp;

  result = modf(x, &temp);
  *iptr = (float) temp;
  return (float) result;
}
