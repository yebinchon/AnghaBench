
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __strtol_t ;



__attribute__((used)) static int
bkm_scale (__strtol_t *x, int scale_factor)
{
  __strtol_t product = *x * scale_factor;
  if (*x != product / scale_factor)
    return 1;
  *x = product;
  return 0;
}
