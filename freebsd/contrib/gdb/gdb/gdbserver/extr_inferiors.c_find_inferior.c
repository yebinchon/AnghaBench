
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inferior_list_entry {struct inferior_list_entry* next; } ;
struct inferior_list {struct inferior_list_entry* head; } ;


 int stub1 (struct inferior_list_entry*,void*) ;

struct inferior_list_entry *
find_inferior (struct inferior_list *list,
        int (*func) (struct inferior_list_entry *, void *), void *arg)
{
  struct inferior_list_entry *inf = list->head;

  while (inf != ((void*)0))
    {
      if ((*func) (inf, arg))
 return inf;
      inf = inf->next;
    }

  return ((void*)0);
}
