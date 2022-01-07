
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
do_rand(unsigned long *ctx)
{
 long hi, lo, x;


 x = (*ctx % 0x7ffffffe) + 1;
 hi = x / 127773;
 lo = x % 127773;
 x = 16807 * lo - 2836 * hi;
 if (x < 0)
  x += 0x7fffffff;

 x--;
 *ctx = x;
 return (x);
}
