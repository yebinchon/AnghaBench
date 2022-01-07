
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ifuncs_resolved; scalar_t__ gnu_ifunc; scalar_t__ bind_now; scalar_t__ irelative; } ;
typedef int RtldLockState ;
typedef TYPE_1__ Obj_Entry ;


 int obj_disable_relro (TYPE_1__*) ;
 int obj_enforce_relro (TYPE_1__*) ;
 int reloc_gnu_ifunc (TYPE_1__*,int,int *) ;
 int reloc_iresolve (TYPE_1__*,int *) ;

__attribute__((used)) static int
resolve_object_ifunc(Obj_Entry *obj, bool bind_now, int flags,
    RtldLockState *lockstate)
{

 if (obj->ifuncs_resolved)
  return (0);
 obj->ifuncs_resolved = 1;
 if (!obj->irelative && !((obj->bind_now || bind_now) && obj->gnu_ifunc))
  return (0);
 if (obj_disable_relro(obj) == -1 ||
     (obj->irelative && reloc_iresolve(obj, lockstate) == -1) ||
     ((obj->bind_now || bind_now) && obj->gnu_ifunc &&
     reloc_gnu_ifunc(obj, flags, lockstate) == -1) ||
     obj_enforce_relro(obj) == -1)
  return (-1);
 return (0);
}
