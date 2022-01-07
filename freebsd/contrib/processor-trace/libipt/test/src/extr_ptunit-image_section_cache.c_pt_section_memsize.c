
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct pt_section {unsigned long long size; unsigned long long bcsize; scalar_t__ mcount; } ;


 int pte_internal ;

int pt_section_memsize(struct pt_section *section, uint64_t *size)
{
 if (!section || !size)
  return -pte_internal;

 *size = section->mcount ? section->size + section->bcsize : 0ull;

 return 0;
}
