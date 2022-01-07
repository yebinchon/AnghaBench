
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long double fabsl (long double) ;
 long double sqrtl (long double) ;

long double
hypotl(long double x, long double y)
{
  long double s = fabsl(x) + fabsl(y);
  if (s == 0.0L)
    return s;
  x /= s; y /= s;
  return s * sqrtl(x * x + y * y);
}
