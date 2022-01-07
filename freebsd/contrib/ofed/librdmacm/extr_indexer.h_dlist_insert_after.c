
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* prev; } ;
typedef TYPE_1__ dlist_entry ;



__attribute__((used)) static inline void dlist_insert_after(dlist_entry *item, dlist_entry *head)
{
 item->next = head->next;
 item->prev = head;
 head->next->prev = item;
 head->next = item;
}
