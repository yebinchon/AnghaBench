
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_section {int dummy; } ;
struct pt_image_section_cache {int dummy; } ;
struct pt_image {int dummy; } ;
struct pt_asid {int dummy; } ;


 int pt_asid_from_user (struct pt_asid*,struct pt_asid const*) ;
 int pt_image_add (struct pt_image*,struct pt_section*,struct pt_asid*,int ,int) ;
 int pt_iscache_lookup (struct pt_image_section_cache*,struct pt_section**,int *,int) ;
 int pt_section_put (struct pt_section*) ;
 int pte_invalid ;

int pt_image_add_cached(struct pt_image *image,
   struct pt_image_section_cache *iscache, int isid,
   const struct pt_asid *uasid)
{
 struct pt_section *section;
 struct pt_asid asid;
 uint64_t vaddr;
 int errcode, status;

 if (!image || !iscache)
  return -pte_invalid;

 errcode = pt_iscache_lookup(iscache, &section, &vaddr, isid);
 if (errcode < 0)
  return errcode;

 errcode = pt_asid_from_user(&asid, uasid);
 if (errcode < 0)
  return errcode;

 status = pt_image_add(image, section, &asid, vaddr, isid);




 errcode = pt_section_put(section);
 if (errcode < 0)
  return errcode;

 return status;
}
