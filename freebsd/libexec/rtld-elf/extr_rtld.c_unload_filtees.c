
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filtees_loaded; int * needed_aux_filtees; int * needed_filtees; } ;
typedef int RtldLockState ;
typedef TYPE_1__ Obj_Entry ;


 int free_needed_filtees (int *,int *) ;

__attribute__((used)) static void
unload_filtees(Obj_Entry *obj, RtldLockState *lockstate)
{

 free_needed_filtees(obj->needed_filtees, lockstate);
 obj->needed_filtees = ((void*)0);
 free_needed_filtees(obj->needed_aux_filtees, lockstate);
 obj->needed_aux_filtees = ((void*)0);
 obj->filtees_loaded = 0;
}
