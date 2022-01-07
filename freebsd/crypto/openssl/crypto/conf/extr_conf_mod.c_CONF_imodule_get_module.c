
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pmod; } ;
typedef int CONF_MODULE ;
typedef TYPE_1__ CONF_IMODULE ;



CONF_MODULE *CONF_imodule_get_module(const CONF_IMODULE *md)
{
    return md->pmod;
}
