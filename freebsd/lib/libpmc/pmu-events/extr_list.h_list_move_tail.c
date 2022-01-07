
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int list_add_tail (struct list_head*,struct list_head*) ;
 int list_del (struct list_head*) ;

__attribute__((used)) static inline void
list_move_tail(struct list_head *entry, struct list_head *head)
{

 list_del(entry);
 list_add_tail(entry, head);
}
