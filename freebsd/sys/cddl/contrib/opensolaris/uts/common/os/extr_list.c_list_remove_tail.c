
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* list_prev; } ;
struct TYPE_7__ {TYPE_2__ list_head; } ;
typedef TYPE_1__ list_t ;
typedef TYPE_2__ list_node_t ;


 void* list_object (TYPE_1__*,TYPE_2__*) ;
 int list_remove_node (TYPE_2__*) ;

void *
list_remove_tail(list_t *list)
{
 list_node_t *tail = list->list_head.list_prev;
 if (tail == &list->list_head)
  return (((void*)0));
 list_remove_node(tail);
 return (list_object(list, tail));
}
