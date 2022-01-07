
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* next; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 int __list_cut_position (struct list_head*,struct list_head*,struct list_head*) ;
 scalar_t__ list_empty (struct list_head*) ;
 scalar_t__ list_is_singular (struct list_head*) ;

__attribute__((used)) static inline void list_cut_position(struct list_head *list,
  struct list_head *head, struct list_head *entry)
{
 if (list_empty(head))
  return;
 if (list_is_singular(head) &&
  (head->next != entry && head != entry))
  return;
 if (entry == head)
  INIT_LIST_HEAD(list);
 else
  __list_cut_position(list, head, entry);
}
