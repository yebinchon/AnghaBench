
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_section {int dummy; } ;


 int pte_internal ;

int pt_section_on_map_lock(struct pt_section *section)
{
 if (!section)
  return -pte_internal;

 return 0;
}
