
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct que_elem {struct que_elem* next; struct que_elem* prev; } ;


 int fprintf (int ,char*,struct que_elem*,struct que_elem*,struct que_elem*) ;
 int stderr ;

void
insque(void *element, void *pred)
{
 struct que_elem *prev, *next, *elem;

 elem = (struct que_elem *)element;
 prev = (struct que_elem *)pred;

 if (prev == ((void*)0)) {
  elem->prev = elem->next = ((void*)0);
  return;
 }

 next = prev->next;
 if (next != ((void*)0)) {







  next->prev = elem;
 }
 prev->next = elem;
 elem->prev = prev;
 elem->next = next;
}
