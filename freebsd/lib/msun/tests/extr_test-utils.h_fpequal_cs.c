
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fabsl (long double) ;
 scalar_t__ isnan (long double) ;
 int signbit (long double) ;

__attribute__((used)) static int
fpequal_cs(long double x, long double y, int checksign)
{
 if (isnan(x) && isnan(y))
  return (1);
 if (checksign)
  return (x == y && !signbit(x) == !signbit(y));
 else
  return (fabsl(x) == fabsl(y));
}
