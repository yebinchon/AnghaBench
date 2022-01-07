
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_section {int ucount; int lock; int alock; } ;


 int free (struct pt_section*) ;
 int mtx_destroy (int *) ;
 int pt_section_lock (struct pt_section*) ;
 int pt_section_unlock (struct pt_section*) ;
 int pte_internal ;

int pt_section_put(struct pt_section *section)
{
 int errcode, ucount;

 if (!section)
  return -pte_internal;

 errcode = pt_section_lock(section);
 if (errcode < 0)
  return errcode;

 ucount = --section->ucount;

 errcode = pt_section_unlock(section);
 if (errcode < 0)
  return errcode;

 if (!ucount) {




  free(section);
 }

 return 0;
}
