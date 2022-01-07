
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;



int
lcompat_hashnum(int64_t x)
{
 x = (~x) + (x << 18);
 x = x ^ (x >> 31);
 x = x * 21;
 x = x ^ (x >> 11);
 x = x + (x << 6);
 x = x ^ (x >> 22);
 return ((int)x);
}
