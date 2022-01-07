
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct que_elem {struct que_elem* prev; struct que_elem* next; } ;



void
remque(void *element)
{
 struct que_elem *prev, *next, *elem;

 elem = (struct que_elem *)element;

 prev = elem->prev;
 next = elem->next;

 if (prev != ((void*)0))
  prev->next = next;
 if (next != ((void*)0))
  next->prev = prev;
}
