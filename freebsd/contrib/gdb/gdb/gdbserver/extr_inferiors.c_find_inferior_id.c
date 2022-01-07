
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inferior_list_entry {int id; struct inferior_list_entry* next; } ;
struct inferior_list {struct inferior_list_entry* head; } ;



struct inferior_list_entry *
find_inferior_id (struct inferior_list *list, int id)
{
  struct inferior_list_entry *inf = list->head;

  while (inf != ((void*)0))
    {
      if (inf->id == id)
 return inf;
      inf = inf->next;
    }

  return ((void*)0);
}
