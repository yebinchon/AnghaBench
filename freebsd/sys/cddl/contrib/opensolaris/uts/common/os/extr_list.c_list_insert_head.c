
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int list_head; } ;
typedef TYPE_1__ list_t ;
typedef int list_node_t ;


 int list_insert_after_node (TYPE_1__*,int *,void*) ;

void
list_insert_head(list_t *list, void *object)
{
 list_node_t *lold = &list->list_head;
 list_insert_after_node(list, lold, object);
}
