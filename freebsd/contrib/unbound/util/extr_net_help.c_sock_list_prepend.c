
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_list {struct sock_list* next; } ;



void sock_list_prepend(struct sock_list** list, struct sock_list* add)
{
 struct sock_list* last = add;
 if(!last)
  return;
 while(last->next)
  last = last->next;
 last->next = *list;
 *list = add;
}
