
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef TYPE_1__ ucl_object_t ;



ucl_object_t *
ucl_elt_append (ucl_object_t *head, ucl_object_t *elt)
{

 if (head == ((void*)0)) {
  elt->next = ((void*)0);
  elt->prev = elt;
  head = elt;
 }
 else {
  elt->prev = head->prev;
  head->prev->next = elt;
  head->prev = elt;
  elt->next = ((void*)0);
 }

 return head;
}
