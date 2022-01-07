
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int list_next; } ;
struct TYPE_7__ {TYPE_1__ list_head; } ;
typedef TYPE_2__ list_t ;


 scalar_t__ list_empty (TYPE_2__*) ;
 void* list_object (TYPE_2__*,int ) ;

void *
list_head(list_t *list)
{
 if (list_empty(list))
  return (((void*)0));
 return (list_object(list, list->list_head.list_next));
}
