
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct pt_section {int * mapping; scalar_t__ mcount; } ;


 int pte_internal ;

__attribute__((used)) static int ifix_unmap(struct pt_section *section)
{
 uint16_t mcount;

 if (!section)
  return -pte_internal;

 mcount = section->mcount;
 if (!mcount)
  return -pte_internal;

 if (!section->mapping)
  return -pte_internal;

 mcount = --section->mcount;
 if (!mcount)
  section->mapping = ((void*)0);

 return 0;
}
