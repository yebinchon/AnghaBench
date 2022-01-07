
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
is_pow2(size_t num)
{
 if(num == 0) return 1;
 return (num & (num-1)) == 0;
}
