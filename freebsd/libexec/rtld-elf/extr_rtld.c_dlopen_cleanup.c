
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ refcount; int dl_refcount; } ;
typedef int RtldLockState ;
typedef TYPE_1__ Obj_Entry ;


 int unload_object (TYPE_1__*,int *) ;
 int unref_dag (TYPE_1__*) ;

__attribute__((used)) static void
dlopen_cleanup(Obj_Entry *obj, RtldLockState *lockstate)
{

 obj->dl_refcount--;
 unref_dag(obj);
 if (obj->refcount == 0)
  unload_object(obj, lockstate);
}
