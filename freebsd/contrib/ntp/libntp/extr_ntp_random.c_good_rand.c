
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline long
good_rand (
 register long x
 )
{
 register long hi, lo;

 hi = x / 127773;
 lo = x % 127773;
 x = 16807 * lo - 2836 * hi;
 if (x <= 0)
  x += 0x7fffffff;
 return (x);

}
