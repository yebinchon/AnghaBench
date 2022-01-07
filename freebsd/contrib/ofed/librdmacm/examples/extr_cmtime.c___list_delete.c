
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* prev; struct list_head* next; } ;


 int INIT_LIST (struct list_head*) ;

__attribute__((used)) static inline void __list_delete(struct list_head *list)
{
 struct list_head *prev, *next;
 prev = list->prev;
 next = list->next;
 prev->next = next;
 next->prev = prev;
 INIT_LIST(list);
}
