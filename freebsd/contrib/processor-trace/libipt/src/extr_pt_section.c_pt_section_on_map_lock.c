
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_section {struct pt_image_section_cache* iscache; } ;
struct pt_image_section_cache {int dummy; } ;


 int pt_iscache_notify_map (struct pt_image_section_cache*,struct pt_section*) ;
 int pt_section_lock_attach (struct pt_section*) ;
 int pt_section_unlock_attach (struct pt_section*) ;
 int pte_internal ;

int pt_section_on_map_lock(struct pt_section *section)
{
 struct pt_image_section_cache *iscache;
 int errcode, status;

 if (!section)
  return -pte_internal;

 errcode = pt_section_lock_attach(section);
 if (errcode < 0)
  return errcode;

 iscache = section->iscache;
 if (!iscache)
  return pt_section_unlock_attach(section);
 status = pt_iscache_notify_map(iscache, section);

 errcode = pt_section_unlock_attach(section);
 if (errcode < 0)
  return errcode;

 return status;
}
