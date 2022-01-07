
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_name; } ;


 TYPE_1__** consoles ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static int
cons_find(const char *name)
{
    int cons;

    for (cons = 0; consoles[cons] != ((void*)0); cons++)
 if (!strcmp(consoles[cons]->c_name, name))
     return (cons);
    return (-1);
}
