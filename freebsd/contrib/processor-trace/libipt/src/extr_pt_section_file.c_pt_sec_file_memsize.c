
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct pt_section {int mapping; } ;


 int pte_internal ;

int pt_sec_file_memsize(const struct pt_section *section, uint64_t *size)
{
 if (!section || !size)
  return -pte_internal;

 if (!section->mapping)
  return -pte_internal;

 *size = 0ull;

 return 0;
}
