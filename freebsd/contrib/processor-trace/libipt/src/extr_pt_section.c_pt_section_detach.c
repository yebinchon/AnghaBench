
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct pt_section {scalar_t__ acount; scalar_t__ ucount; struct pt_image_section_cache* iscache; } ;
struct pt_image_section_cache {int dummy; } ;


 int pt_section_lock_attach (struct pt_section*) ;
 int pt_section_unlock_attach (struct pt_section*) ;
 int pte_internal ;

int pt_section_detach(struct pt_section *section,
        struct pt_image_section_cache *iscache)
{
 uint16_t acount, ucount;
 int errcode;

 if (!section || !iscache)
  return -pte_internal;

 errcode = pt_section_lock_attach(section);
 if (errcode < 0)
  return errcode;

 if (section->iscache != iscache)
  goto out_unlock;

 acount = section->acount;
 if (!acount)
  goto out_unlock;

 acount -= 1;
 ucount = section->ucount;
 if (ucount < acount)
  goto out_unlock;

 section->acount = acount;
 if (!acount)
  section->iscache = ((void*)0);

 return pt_section_unlock_attach(section);

 out_unlock:
 (void) pt_section_unlock_attach(section);
 return -pte_internal;
}
