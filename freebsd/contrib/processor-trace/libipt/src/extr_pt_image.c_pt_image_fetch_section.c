
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_mapped_section {int dummy; } ;
struct pt_section_list {struct pt_section_list* next; struct pt_mapped_section section; } ;
struct pt_image {struct pt_section_list* sections; } ;
struct pt_asid {int dummy; } ;


 int pt_image_check_msec (struct pt_mapped_section*,struct pt_asid const*,int ) ;
 int pte_internal ;
 int pte_nomap ;

__attribute__((used)) static int pt_image_fetch_section(struct pt_image *image,
      const struct pt_asid *asid, uint64_t vaddr)
{
 struct pt_section_list **start, **list;

 if (!image)
  return -pte_internal;

 start = &image->sections;
 for (list = start; *list;) {
  struct pt_mapped_section *msec;
  struct pt_section_list *elem;
  int errcode;

  elem = *list;
  msec = &elem->section;

  errcode = pt_image_check_msec(msec, asid, vaddr);
  if (errcode < 0) {
   if (errcode != -pte_nomap)
    return errcode;

   list = &elem->next;
   continue;
  }


  if (list != start) {
   *list = elem->next;
   elem->next = *start;
   *start = elem;
  }

  return 0;
 }

 return -pte_nomap;
}
