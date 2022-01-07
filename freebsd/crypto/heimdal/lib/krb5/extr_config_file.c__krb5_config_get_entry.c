
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int type; int * name; struct TYPE_6__* next; } ;
typedef TYPE_1__ krb5_config_section ;


 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int krb5_config_list ;
 scalar_t__ strcmp (char const*,int *) ;
 int * strdup (char const*) ;

krb5_config_section *
_krb5_config_get_entry(krb5_config_section **parent, const char *name, int type)
{
    krb5_config_section **q;

    for(q = parent; *q != ((void*)0); q = &(*q)->next)
 if(type == krb5_config_list &&
    (unsigned)type == (*q)->type &&
    strcmp(name, (*q)->name) == 0)
     return *q;
    *q = calloc(1, sizeof(**q));
    if(*q == ((void*)0))
 return ((void*)0);
    (*q)->name = strdup(name);
    (*q)->type = type;
    if((*q)->name == ((void*)0)) {
 free(*q);
 *q = ((void*)0);
 return ((void*)0);
    }
    return *q;
}
