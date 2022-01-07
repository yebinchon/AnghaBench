
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long flags; } ;
typedef TYPE_1__ CONF_IMODULE ;



void CONF_imodule_set_flags(CONF_IMODULE *md, unsigned long flags)
{
    md->flags = flags;
}
