
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {scalar_t__ next; scalar_t__ prev; } ;


 int list_empty (struct list_head const*) ;

__attribute__((used)) static inline int list_is_singular(const struct list_head *head)
{
 return !list_empty(head) && (head->next == head->prev);
}
