
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dl_list {struct dl_list* next; } ;



__attribute__((used)) static inline int dl_list_empty(struct dl_list *list)
{
 return list->next == list;
}
