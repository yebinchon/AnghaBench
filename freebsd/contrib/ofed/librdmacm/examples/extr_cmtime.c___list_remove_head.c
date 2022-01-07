
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct list_head* next; } ;
struct work_list {TYPE_1__ list; } ;
struct list_head {int dummy; } ;


 int __list_delete (struct list_head*) ;

__attribute__((used)) static inline struct list_head *__list_remove_head(struct work_list *work_list)
{
 struct list_head *list_item;

 list_item = work_list->list.next;
 __list_delete(list_item);
 return list_item;
}
