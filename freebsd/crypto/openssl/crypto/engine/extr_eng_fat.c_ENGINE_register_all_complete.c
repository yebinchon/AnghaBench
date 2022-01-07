
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ ENGINE ;


 int ENGINE_FLAGS_NO_REGISTER_ALL ;
 TYPE_1__* ENGINE_get_first () ;
 TYPE_1__* ENGINE_get_next (TYPE_1__*) ;
 int ENGINE_register_complete (TYPE_1__*) ;

int ENGINE_register_all_complete(void)
{
    ENGINE *e;

    for (e = ENGINE_get_first(); e; e = ENGINE_get_next(e))
        if (!(e->flags & ENGINE_FLAGS_NO_REGISTER_ALL))
            ENGINE_register_complete(e);
    return 1;
}
