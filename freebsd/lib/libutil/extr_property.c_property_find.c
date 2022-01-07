
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* properties ;
struct TYPE_3__ {char* value; struct TYPE_3__* next; int * name; } ;


 scalar_t__ strcmp (int *,char const*) ;

char *
property_find(properties list, const char *name)
{
    if (list == ((void*)0) || name == ((void*)0) || !name[0])
 return (((void*)0));
    while (list != ((void*)0)) {
 if (list->name != ((void*)0) && strcmp(list->name, name) == 0)
     return (list->value);
 list = list->next;
    }
    return (((void*)0));
}
