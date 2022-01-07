
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; int stype; int gen_name; } ;
typedef TYPE_1__ Symbol ;


 int SUndefined ;
 scalar_t__ emalloc (int) ;
 int estrdup (char*) ;
 int hashtabadd (int ,TYPE_1__*) ;
 scalar_t__ hashtabsearch (int ,void*) ;
 int htab ;
 int output_name (int ) ;

Symbol *
addsym(char *name)
{
    Symbol key, *s;

    key.name = name;
    s = (Symbol *) hashtabsearch(htab, (void *) &key);
    if (s == ((void*)0)) {
 s = (Symbol *) emalloc(sizeof(*s));
 s->name = name;
 s->gen_name = estrdup(name);
 output_name(s->gen_name);
 s->stype = SUndefined;
 hashtabadd(htab, s);
    }
    return s;
}
