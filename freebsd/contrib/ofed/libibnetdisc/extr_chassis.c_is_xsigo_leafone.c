
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static int is_xsigo_leafone(uint64_t guid)
{
 if ((guid & 0xffffffffff000000ULL) == 0x0013970102000000ULL)
  return 1;
 else
  return 0;
}
