
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dl_list {int prev; } ;


 int dl_list_add (int ,struct dl_list*) ;

__attribute__((used)) static inline void dl_list_add_tail(struct dl_list *list, struct dl_list *item)
{
 dl_list_add(list->prev, item);
}
