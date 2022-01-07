
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_section {unsigned long long bcsize; int mcount; } ;


 int pt_section_lock (struct pt_section*) ;
 int pt_section_unlock (struct pt_section*) ;
 int pte_internal ;

int pt_section_unmap(struct pt_section *section)
{
 int errcode, mcount;

 if (!section)
  return -pte_internal;

 errcode = pt_section_lock(section);
 if (errcode < 0)
  return errcode;

 section->bcsize = 0ull;
 mcount = --section->mcount;

 errcode = pt_section_unlock(section);
 if (errcode < 0)
  return errcode;

 if (mcount < 0)
  return -pte_internal;

 return 0;
}
