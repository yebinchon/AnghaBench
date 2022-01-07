
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double modf (double,double*) ;

long double
modfl(long double x, long double *iptr)
{
  double result, temp;

  result = modf((double) x, &temp);
  *iptr = temp;
  return result;
}
