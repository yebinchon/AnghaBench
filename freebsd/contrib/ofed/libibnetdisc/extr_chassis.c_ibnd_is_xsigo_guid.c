
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



int ibnd_is_xsigo_guid(uint64_t guid)
{
 if ((guid & 0xffffff0000000000ULL) == 0x0013970000000000ULL)
  return 1;
 else
  return 0;
}
