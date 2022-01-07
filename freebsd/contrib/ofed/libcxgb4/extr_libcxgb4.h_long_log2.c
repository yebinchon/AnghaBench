
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long_log2(unsigned long x)
{
 unsigned r = 0;
 for (x >>= 1; x > 0; x >>= 1)
  r++;
 return r;
}
