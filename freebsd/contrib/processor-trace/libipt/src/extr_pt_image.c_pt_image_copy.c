
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vaddr; int asid; int section; } ;
struct pt_section_list {int isid; TYPE_1__ section; struct pt_section_list* next; } ;
typedef struct pt_image {struct pt_section_list* sections; } const pt_image ;


 int pt_image_add (struct pt_image const*,int ,int *,int ,int ) ;
 int pte_invalid ;

int pt_image_copy(struct pt_image *image, const struct pt_image *src)
{
 struct pt_section_list *list;
 int ignored;

 if (!image || !src)
  return -pte_invalid;






 if (image == src)
  return 0;

 ignored = 0;
 for (list = src->sections; list; list = list->next) {
  int errcode;

  errcode = pt_image_add(image, list->section.section,
           &list->section.asid,
           list->section.vaddr,
           list->isid);
  if (errcode < 0)
   ignored += 1;
 }

 return ignored;
}
