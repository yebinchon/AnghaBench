
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double fabs (double) ;
 double sqrt (double) ;

double
hypot(double x, double y)
{
  double s = fabs(x) + fabs(y);
  if (s == 0.0)
    return s;
  x /= s; y /= s;
  return s * sqrt(x * x + y * y);
}
