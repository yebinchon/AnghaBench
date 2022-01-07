
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filtees_loaded; int needed_aux_filtees; int needed_filtees; } ;
typedef int RtldLockState ;
typedef TYPE_1__ Obj_Entry ;


 int load_filtee1 (TYPE_1__*,int ,int,int *) ;
 int lock_restart_for_upgrade (int *) ;

__attribute__((used)) static void
load_filtees(Obj_Entry *obj, int flags, RtldLockState *lockstate)
{

    lock_restart_for_upgrade(lockstate);
    if (!obj->filtees_loaded) {
 load_filtee1(obj, obj->needed_filtees, flags, lockstate);
 load_filtee1(obj, obj->needed_aux_filtees, flags, lockstate);
 obj->filtees_loaded = 1;
    }
}
