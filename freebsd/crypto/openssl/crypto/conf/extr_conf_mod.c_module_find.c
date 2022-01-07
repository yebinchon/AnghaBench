
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ CONF_MODULE ;


 int sk_CONF_MODULE_num (int ) ;
 TYPE_1__* sk_CONF_MODULE_value (int ,int) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (int ,char const*,int) ;
 char* strrchr (char const*,char) ;
 int supported_modules ;

__attribute__((used)) static CONF_MODULE *module_find(const char *name)
{
    CONF_MODULE *tmod;
    int i, nchar;
    char *p;
    p = strrchr(name, '.');

    if (p)
        nchar = p - name;
    else
        nchar = strlen(name);

    for (i = 0; i < sk_CONF_MODULE_num(supported_modules); i++) {
        tmod = sk_CONF_MODULE_value(supported_modules, i);
        if (strncmp(tmod->name, name, nchar) == 0)
            return tmod;
    }

    return ((void*)0);

}
