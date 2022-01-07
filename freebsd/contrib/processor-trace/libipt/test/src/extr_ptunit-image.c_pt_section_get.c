
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_section {int ucount; } ;


 int pte_internal ;

int pt_section_get(struct pt_section *section)
{
 if (!section)
  return -pte_internal;

 section->ucount += 1;
 return 0;
}
