
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;



int64_t
lstd_pow(int64_t x, int64_t y)
{
 int64_t rv = 1;

 if (y < 0)
  return 0;
 rv = x;
 while (--y)
  rv *= x;

 return rv;
}
