
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int list_head; } ;
typedef TYPE_1__ list_t ;
struct TYPE_8__ {int * list_prev; } ;
typedef TYPE_2__ list_node_t ;


 TYPE_2__* list_d2l (TYPE_1__*,void*) ;
 void* list_object (TYPE_1__*,int *) ;

void *
list_prev(list_t *list, void *object)
{
 list_node_t *node = list_d2l(list, object);

 if (node->list_prev != &list->list_head)
  return (list_object(list, node->list_prev));

 return (((void*)0));
}
