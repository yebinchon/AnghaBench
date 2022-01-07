
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF_IMODULE ;


 int * initialized_modules ;
 int module_finish (int *) ;
 int sk_CONF_IMODULE_free (int *) ;
 scalar_t__ sk_CONF_IMODULE_num (int *) ;
 int * sk_CONF_IMODULE_pop (int *) ;

void CONF_modules_finish(void)
{
    CONF_IMODULE *imod;
    while (sk_CONF_IMODULE_num(initialized_modules) > 0) {
        imod = sk_CONF_IMODULE_pop(initialized_modules);
        module_finish(imod);
    }
    sk_CONF_IMODULE_free(initialized_modules);
    initialized_modules = ((void*)0);
}
