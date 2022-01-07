
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int next; } ;


 int linux_list_splice (struct list_head const*,struct list_head*,int ) ;

__attribute__((used)) static inline void
list_splice(const struct list_head *list, struct list_head *head)
{

 linux_list_splice(list, head, head->next);
}
