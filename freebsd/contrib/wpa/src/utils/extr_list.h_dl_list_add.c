
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dl_list {struct dl_list* next; struct dl_list* prev; } ;



__attribute__((used)) static inline void dl_list_add(struct dl_list *list, struct dl_list *item)
{
 item->next = list->next;
 item->prev = list;
 list->next->prev = item;
 list->next = item;
}
