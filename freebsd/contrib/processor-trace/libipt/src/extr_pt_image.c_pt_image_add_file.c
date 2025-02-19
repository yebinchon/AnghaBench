
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_section {int dummy; } ;
struct pt_image {int dummy; } ;
struct pt_asid {int dummy; } ;


 int pt_asid_from_user (struct pt_asid*,struct pt_asid const*) ;
 int pt_image_add (struct pt_image*,struct pt_section*,struct pt_asid*,int ,int ) ;
 int pt_mk_section (struct pt_section**,char const*,int ,int ) ;
 int pt_section_put (struct pt_section*) ;
 int pte_invalid ;

int pt_image_add_file(struct pt_image *image, const char *filename,
        uint64_t offset, uint64_t size,
        const struct pt_asid *uasid, uint64_t vaddr)
{
 struct pt_section *section;
 struct pt_asid asid;
 int errcode;

 if (!image || !filename)
  return -pte_invalid;

 errcode = pt_asid_from_user(&asid, uasid);
 if (errcode < 0)
  return errcode;

 section = ((void*)0);
 errcode = pt_mk_section(&section, filename, offset, size);
 if (errcode < 0)
  return errcode;

 errcode = pt_image_add(image, section, &asid, vaddr, 0);
 if (errcode < 0) {
  (void) pt_section_put(section);
  return errcode;
 }


 errcode = pt_section_put(section);
 if (errcode < 0)
  return errcode;

 return 0;
}
