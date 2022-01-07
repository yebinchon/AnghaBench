
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct pt_section {scalar_t__ ucount; } ;


 int pte_internal ;
 int pte_overflow ;

int pt_section_get(struct pt_section *section)
{
 uint16_t ucount;

 if (!section)
  return -pte_internal;

 ucount = section->ucount + 1;
 if (!ucount)
  return -pte_overflow;

 section->ucount = ucount;
 return 0;
}
