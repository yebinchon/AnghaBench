
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



int ibnd_is_xsigo_hca(uint64_t guid)
{

 if ((guid & 0xffffffff00000000ULL) == 0x0013970200000000ULL)
  return 1;
 else
  return 0;
}
