
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct outbound_list {struct outbound_entry* first; } ;
struct outbound_entry {struct outbound_entry* prev; struct outbound_entry* next; } ;



void
outbound_list_insert(struct outbound_list* list, struct outbound_entry* e)
{
 if(list->first)
  list->first->prev = e;
 e->next = list->first;
 e->prev = ((void*)0);
 list->first = e;
}
