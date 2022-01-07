
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct pt_section {struct pt_sec_posix_mapping* mapping; } ;
struct pt_sec_posix_mapping {int * end; int * base; } ;


 int pte_internal ;

int pt_sec_posix_memsize(const struct pt_section *section, uint64_t *size)
{
 struct pt_sec_posix_mapping *mapping;
 const uint8_t *begin, *end;

 if (!section || !size)
  return -pte_internal;

 mapping = section->mapping;
 if (!mapping)
  return -pte_internal;

 begin = mapping->base;
 end = mapping->end;

 if (!begin || !end || end < begin)
  return -pte_internal;

 *size = (uint64_t) (end - begin);

 return 0;
}
