
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
double ipow(double x, int n)
{
 double v;

 if (n <= 0)
  return 1;
 v = ipow(x, n/2);
 if (n % 2 == 0)
  return v * v;
 else
  return x * v * v;
}
