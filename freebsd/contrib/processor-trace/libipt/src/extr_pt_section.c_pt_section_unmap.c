
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct pt_section {int (* unmap ) (struct pt_section*) ;int * bcache; scalar_t__ mcount; } ;


 int pt_bcache_free (int *) ;
 int pt_section_lock (struct pt_section*) ;
 int pt_section_unlock (struct pt_section*) ;
 int pte_internal ;
 int pte_nomap ;
 int stub1 (struct pt_section*) ;

int pt_section_unmap(struct pt_section *section)
{
 uint16_t mcount;
 int errcode, status;

 if (!section)
  return -pte_internal;

 errcode = pt_section_lock(section);
 if (errcode < 0)
  return errcode;

 mcount = section->mcount;

 errcode = -pte_nomap;
 if (!mcount)
  goto out_unlock;

 section->mcount = mcount -= 1;
 if (mcount)
  return pt_section_unlock(section);

 errcode = -pte_internal;
 if (!section->unmap)
  goto out_unlock;

 status = section->unmap(section);

 pt_bcache_free(section->bcache);
 section->bcache = ((void*)0);

 errcode = pt_section_unlock(section);
 if (errcode < 0)
  return errcode;

 return status;

out_unlock:
 (void) pt_section_unlock(section);
 return errcode;
}
