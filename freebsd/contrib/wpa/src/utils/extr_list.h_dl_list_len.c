
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dl_list {struct dl_list* next; } ;



__attribute__((used)) static inline unsigned int dl_list_len(struct dl_list *list)
{
 struct dl_list *item;
 int count = 0;
 for (item = list->next; item != list; item = item->next)
  count++;
 return count;
}
