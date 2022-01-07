
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _property {int dummy; } ;
typedef TYPE_1__* properties ;
struct TYPE_4__ {int * value; struct TYPE_4__* name; int * next; } ;


 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 void* strdup (char*) ;

__attribute__((used)) static properties
property_alloc(char *name, char *value)
{
    properties n;

    if ((n = (properties)malloc(sizeof(struct _property))) == ((void*)0))
 return (((void*)0));
    n->next = ((void*)0);
    if (name != ((void*)0)) {
 if ((n->name = strdup(name)) == ((void*)0)) {
     free(n);
     return (((void*)0));
 }
    } else
 n->name = ((void*)0);
    if (value != ((void*)0)) {
 if ((n->value = strdup(value)) == ((void*)0)) {
     free(n->name);
     free(n);
     return (((void*)0));
 }
    } else
 n->value = ((void*)0);
    return (n);
}
