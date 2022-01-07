
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtree_entry {int dummy; } ;
struct attr_counter {scalar_t__ count; struct attr_counter* next; struct attr_counter* prev; } ;


 struct attr_counter* attr_counter_new (struct mtree_entry*,struct attr_counter*) ;

__attribute__((used)) static int
attr_counter_inc(struct attr_counter **top, struct attr_counter *ac,
    struct attr_counter *last, struct mtree_entry *me)
{
 struct attr_counter *pac;

 if (ac != ((void*)0)) {
  ac->count++;
  if (*top == ac || ac->prev->count >= ac->count)
   return (0);
  for (pac = ac->prev; pac; pac = pac->prev) {
   if (pac->count >= ac->count)
    break;
  }
  ac->prev->next = ac->next;
  if (ac->next != ((void*)0))
   ac->next->prev = ac->prev;
  if (pac != ((void*)0)) {
   ac->prev = pac;
   ac->next = pac->next;
   pac->next = ac;
   if (ac->next != ((void*)0))
    ac->next->prev = ac;
  } else {
   ac->prev = ((void*)0);
   ac->next = *top;
   *top = ac;
   ac->next->prev = ac;
  }
 } else if (last != ((void*)0)) {
  ac = attr_counter_new(me, last);
  if (ac == ((void*)0))
   return (-1);
  last->next = ac;
 }
 return (0);
}
