
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_section {int (* unmap ) (struct pt_section*) ;} ;


 int pte_internal ;
 int pte_nomap ;
 int stub1 (struct pt_section*) ;

int pt_section_unmap(struct pt_section *section)
{
 if (!section)
  return -pte_internal;

 if (!section->unmap)
  return -pte_nomap;

 return section->unmap(section);
}
