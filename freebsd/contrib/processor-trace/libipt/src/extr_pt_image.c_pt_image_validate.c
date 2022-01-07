
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct pt_section_list {int isid; int section; } ;
struct pt_mapped_section {int dummy; } ;
struct pt_image {struct pt_section_list* sections; } ;


 int memcmp (int *,struct pt_mapped_section const*,int) ;
 scalar_t__ pt_msec_begin (struct pt_mapped_section const*) ;
 scalar_t__ pt_msec_end (struct pt_mapped_section const*) ;
 int pte_internal ;
 int pte_nomap ;

int pt_image_validate(const struct pt_image *image,
        const struct pt_mapped_section *usec, uint64_t vaddr,
        int isid)
{
 const struct pt_section_list *slist;
 uint64_t begin, end;
 int status;

 if (!image || !usec)
  return -pte_internal;


 begin = pt_msec_begin(usec);
 end = pt_msec_end(usec);
 if (vaddr < begin || end <= vaddr)
  return -pte_nomap;
 slist = image->sections;
 if (!slist)
  return -pte_nomap;

 if (slist->isid != isid)
  return -pte_nomap;

 status = memcmp(&slist->section, usec, sizeof(*usec));
 if (status)
  return -pte_nomap;

 return 0;
}
