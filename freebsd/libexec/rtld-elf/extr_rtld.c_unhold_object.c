
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ holdcount; scalar_t__ unholdfree; } ;
typedef TYPE_1__ Obj_Entry ;


 int assert (int) ;
 int release_object (TYPE_1__*) ;

__attribute__((used)) static void
unhold_object(Obj_Entry *obj)
{

 assert(obj->holdcount > 0);
 if (--obj->holdcount == 0 && obj->unholdfree)
  release_object(obj);
}
