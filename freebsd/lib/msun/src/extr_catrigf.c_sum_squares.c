
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float SQRT_MIN ;

__attribute__((used)) static inline float
sum_squares(float x, float y)
{

 if (y < SQRT_MIN)
  return (x * x);

 return (x * x + y * y);
}
