
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct pt_section {unsigned long long size; } ;



uint64_t pt_section_size(const struct pt_section *section)
{
 if (!section)
  return 0ull;

 return section->size;
}
