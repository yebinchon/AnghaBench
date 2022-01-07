
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* properties ;
struct TYPE_4__ {struct TYPE_4__* value; struct TYPE_4__* name; struct TYPE_4__* next; } ;


 int free (TYPE_1__*) ;

void
properties_free(properties list)
{
    properties tmp;

    while (list) {
 tmp = list->next;
 if (list->name)
     free(list->name);
 if (list->value)
     free(list->value);
 free(list);
 list = tmp;
    }
}
