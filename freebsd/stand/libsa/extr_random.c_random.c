
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long randseed ;

long
random(void)
{
 long x, hi, lo, t;







 x = randseed;
 hi = x / 127773;
 lo = x % 127773;
 t = 16807 * lo - 2836 * hi;
 if (t <= 0)
  t += 0x7fffffff;
 randseed = t;
 return (t);
}
