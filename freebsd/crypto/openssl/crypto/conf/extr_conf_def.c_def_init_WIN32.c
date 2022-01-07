
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; void* meth_data; int * meth; } ;
typedef TYPE_1__ CONF ;


 scalar_t__ CONF_type_win32 ;
 int WIN32_method ;

__attribute__((used)) static int def_init_WIN32(CONF *conf)
{
    if (conf == ((void*)0))
        return 0;

    conf->meth = &WIN32_method;
    conf->meth_data = (void *)CONF_type_win32;
    conf->data = ((void*)0);

    return 1;
}
