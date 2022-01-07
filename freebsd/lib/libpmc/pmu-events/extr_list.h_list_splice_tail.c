
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int prev; } ;


 int linux_list_splice (struct list_head*,int ,struct list_head*) ;

__attribute__((used)) static inline void
list_splice_tail(struct list_head *list, struct list_head *head)
{

 linux_list_splice(list, head->prev, head);
}
