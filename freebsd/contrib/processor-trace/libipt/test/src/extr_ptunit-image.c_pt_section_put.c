
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct pt_section {scalar_t__ ucount; struct ifix_status* status; } ;
struct ifix_status {int bad_put; int deleted; } ;


 int pte_internal ;

int pt_section_put(struct pt_section *section)
{
 struct ifix_status *status;
 uint16_t ucount;

 if (!section)
  return -pte_internal;

 status = section->status;
 if (!status)
  return -pte_internal;

 ucount = section->ucount;
 if (!ucount) {
  status->bad_put += 1;

  return -pte_internal;
 }

 ucount = --section->ucount;
 if (!ucount) {
  status->deleted += 1;

  if (status->deleted > 1)
   return -pte_internal;
 }

 return 0;
}
