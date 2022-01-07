
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long double SQRT_MIN ;

__attribute__((used)) static inline long double
sum_squares(long double x, long double y)
{

 if (y < SQRT_MIN)
  return (x * x);

 return (x * x + y * y);
}
