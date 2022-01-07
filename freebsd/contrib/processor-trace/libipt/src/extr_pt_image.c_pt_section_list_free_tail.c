
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_section_list {struct pt_section_list* next; } ;


 int pt_section_list_free (struct pt_section_list*) ;

__attribute__((used)) static void pt_section_list_free_tail(struct pt_section_list *list)
{
 while (list) {
  struct pt_section_list *trash;

  trash = list;
  list = list->next;

  pt_section_list_free(trash);
 }
}
