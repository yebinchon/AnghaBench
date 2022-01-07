
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* prev; struct list_head* next; } ;


 scalar_t__ list_empty (struct list_head const*) ;

__attribute__((used)) static inline void
linux_list_splice(const struct list_head *list, struct list_head *prev,
    struct list_head *next)
{
 struct list_head *first;
 struct list_head *last;

 if (list_empty(list))
  return;
 first = list->next;
 last = list->prev;
 first->prev = prev;
 prev->next = first;
 last->next = next;
 next->prev = last;
}
