
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __strtol_t ;


 scalar_t__ bkm_scale (int *,int) ;

__attribute__((used)) static int
bkm_scale_by_power (__strtol_t *x, int base, int power)
{
  while (power--)
    if (bkm_scale (x, base))
      return 1;

  return 0;
}
