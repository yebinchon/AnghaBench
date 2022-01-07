
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline float
f(float a, float b, float hypot_a_b)
{
 if (b < 0)
  return ((hypot_a_b - b) / 2);
 if (b == 0)
  return (a / 2);
 return (a * a / (hypot_a_b + b) / 2);
}
