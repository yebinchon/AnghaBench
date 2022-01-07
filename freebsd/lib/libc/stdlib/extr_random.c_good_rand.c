
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;



__attribute__((used)) static inline uint32_t
good_rand(uint32_t ctx)
{
 int32_t hi, lo, x;


 x = (ctx % 0x7ffffffe) + 1;
 hi = x / 127773;
 lo = x % 127773;
 x = 16807 * lo - 2836 * hi;
 if (x < 0)
  x += 0x7fffffff;

 return (x - 1);
}
