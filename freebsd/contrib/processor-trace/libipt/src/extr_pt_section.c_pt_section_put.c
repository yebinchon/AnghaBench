
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pt_section {int mcount; int ucount; } ;


 int pt_section_free (struct pt_section*) ;
 int pt_section_lock (struct pt_section*) ;
 int pt_section_unlock (struct pt_section*) ;
 int pte_internal ;

int pt_section_put(struct pt_section *section)
{
 uint16_t ucount, mcount;
 int errcode;

 if (!section)
  return -pte_internal;

 errcode = pt_section_lock(section);
 if (errcode < 0)
  return errcode;

 mcount = section->mcount;
 ucount = section->ucount;
 if (ucount > 1) {
  section->ucount = ucount - 1;
  return pt_section_unlock(section);
 }

 errcode = pt_section_unlock(section);
 if (errcode < 0)
  return errcode;

 if (!ucount || mcount)
  return -pte_internal;

 pt_section_free(section);
 return 0;
}
