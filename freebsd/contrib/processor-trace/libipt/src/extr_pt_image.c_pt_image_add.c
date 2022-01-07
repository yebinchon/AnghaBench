
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct pt_mapped_section {int dummy; } ;
struct pt_section_list {int isid; struct pt_section_list* next; struct pt_mapped_section section; } ;
struct pt_section {int dummy; } ;
struct pt_image {struct pt_section_list* sections; } ;
struct pt_asid {int dummy; } ;


 int pt_asid_match (struct pt_asid const*,struct pt_asid const*) ;
 struct pt_section_list* pt_mk_section_list (struct pt_section*,struct pt_asid const*,scalar_t__,scalar_t__,scalar_t__,int) ;
 struct pt_asid* pt_msec_asid (struct pt_mapped_section const*) ;
 scalar_t__ pt_msec_begin (struct pt_mapped_section const*) ;
 scalar_t__ pt_msec_end (struct pt_mapped_section const*) ;
 scalar_t__ pt_msec_offset (struct pt_mapped_section const*) ;
 struct pt_section* pt_msec_section (struct pt_mapped_section const*) ;
 int pt_section_list_free_tail (struct pt_section_list*) ;
 scalar_t__ pt_section_size (struct pt_section*) ;
 int pte_internal ;
 int pte_nomem ;

int pt_image_add(struct pt_image *image, struct pt_section *section,
   const struct pt_asid *asid, uint64_t vaddr, int isid)
{
 struct pt_section_list **list, *next, *removed, *new;
 uint64_t size, begin, end;
 int errcode;

 if (!image || !section)
  return -pte_internal;

 size = pt_section_size(section);
 begin = vaddr;
 end = begin + size;

 next = pt_mk_section_list(section, asid, begin, 0ull, size, isid);
 if (!next)
  return -pte_nomem;

 removed = ((void*)0);
 errcode = 0;


 list = &(image->sections);
 while (*list) {
  const struct pt_mapped_section *msec;
  const struct pt_asid *masid;
  struct pt_section_list *current;
  struct pt_section *lsec;
  uint64_t lbegin, lend, loff;

  current = *list;
  msec = &current->section;
  masid = pt_msec_asid(msec);

  errcode = pt_asid_match(masid, asid);
  if (errcode < 0)
   break;

  if (!errcode) {
   list = &((*list)->next);
   continue;
  }

  lbegin = pt_msec_begin(msec);
  lend = pt_msec_end(msec);

  if ((end <= lbegin) || (lend <= begin)) {
   list = &((*list)->next);
   continue;
  }


  lsec = pt_msec_section(msec);
  loff = pt_msec_offset(msec);





  *list = current->next;




  current->next = removed;
  removed = current;


  if (lbegin < begin) {
   new = pt_mk_section_list(lsec, masid, lbegin, loff,
       begin - lbegin, current->isid);
   if (!new) {
    errcode = -pte_nomem;
    break;
   }

   new->next = next;
   next = new;
  }


  if (end < lend) {
   new = pt_mk_section_list(lsec, masid, end,
       loff + (end - lbegin),
       lend - end, current->isid);
   if (!new) {
    errcode = -pte_nomem;
    break;
   }

   new->next = next;
   next = new;
  }
 }

 if (errcode < 0) {
  pt_section_list_free_tail(next);


  for (; *list; list = &((*list)->next))
   ;

  *list = removed;
  return errcode;
 }

 pt_section_list_free_tail(removed);

 *list = next;
 return 0;
}
