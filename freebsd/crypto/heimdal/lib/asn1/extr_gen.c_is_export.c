
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sexport {int defined; int name; struct sexport* next; } ;


 struct sexport* exports ;
 scalar_t__ strcmp (int ,char const*) ;

int
is_export(const char *name)
{
    struct sexport *tmp;

    if (exports == ((void*)0))
 return 1;

    for (tmp = exports; tmp != ((void*)0); tmp = tmp->next) {
 if (strcmp(tmp->name, name) == 0) {
     tmp->defined = 1;
     return 1;
 }
    }
    return 0;
}
