
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_section {int dummy; } ;
struct pt_mapped_section {struct pt_section* section; } ;
struct pt_image {struct pt_section* section; } ;
struct pt_asid {int dummy; } ;


 int pt_section_get (struct pt_section*) ;
 int pte_internal ;
 int pte_nomap ;

int pt_image_find(struct pt_image *image, struct pt_mapped_section *msec,
    const struct pt_asid *asid, uint64_t vaddr)
{
 struct pt_section *section;

 (void) vaddr;

 if (!image || !msec || !asid)
  return -pte_internal;

 section = image->section;
 if (!section)
  return -pte_nomap;

 if (msec->section)
  return -pte_internal;

 msec->section = section;

 return pt_section_get(section);
}
