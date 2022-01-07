
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct pt_section {int read; int unmap; int mapping; struct ifix_status* status; int mcount; } ;
struct ifix_status {int mapping; } ;


 int ifix_read ;
 int ifix_unmap ;
 int pte_internal ;

int pt_section_map(struct pt_section *section)
{
 struct ifix_status *status;
 uint16_t mcount;

 if (!section)
  return -pte_internal;

 mcount = section->mcount++;
 if (mcount)
  return 0;

 if (section->mapping)
  return -pte_internal;

 status = section->status;
 if (!status)
  return -pte_internal;

 section->mapping = status->mapping;
 section->unmap = ifix_unmap;
 section->read = ifix_read;

 return 0;
}
