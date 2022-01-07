
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ marker; } ;
typedef int RtldLockState ;
typedef TYPE_1__ Obj_Entry ;


 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int next ;
 int relocate_object (TYPE_1__*,int,TYPE_1__*,int,int *) ;

__attribute__((used)) static int
relocate_objects(Obj_Entry *first, bool bind_now, Obj_Entry *rtldobj,
    int flags, RtldLockState *lockstate)
{
 Obj_Entry *obj;
 int error;

 for (error = 0, obj = first; obj != ((void*)0);
     obj = TAILQ_NEXT(obj, next)) {
  if (obj->marker)
   continue;
  error = relocate_object(obj, bind_now, rtldobj, flags,
      lockstate);
  if (error == -1)
   break;
 }
 return (error);
}
