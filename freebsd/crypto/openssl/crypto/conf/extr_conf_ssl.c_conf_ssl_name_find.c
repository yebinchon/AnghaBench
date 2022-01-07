
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssl_conf_name_st {int name; } ;


 struct ssl_conf_name_st* ssl_names ;
 size_t ssl_names_count ;
 scalar_t__ strcmp (int ,char const*) ;

int conf_ssl_name_find(const char *name, size_t *idx)
{
    size_t i;
    const struct ssl_conf_name_st *nm;

    if (name == ((void*)0))
        return 0;
    for (i = 0, nm = ssl_names; i < ssl_names_count; i++, nm++) {
        if (strcmp(nm->name, name) == 0) {
            *idx = i;
            return 1;
        }
    }
    return 0;
}
