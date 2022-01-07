
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inferior_list_entry {struct inferior_list_entry* next; } ;
struct inferior_list {struct inferior_list_entry* tail; struct inferior_list_entry* head; } ;



void
add_inferior_to_list (struct inferior_list *list,
        struct inferior_list_entry *new_inferior)
{
  new_inferior->next = ((void*)0);
  if (list->tail != ((void*)0))
    list->tail->next = new_inferior;
  else
    list->head = new_inferior;
  list->tail = new_inferior;
}
