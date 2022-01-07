
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ holdcount; int unholdfree; int mapsize; int mapbase; } ;
typedef TYPE_1__ Obj_Entry ;


 int linkmap_delete (TYPE_1__*) ;
 int munmap (int ,int ) ;
 int obj_free (TYPE_1__*) ;

__attribute__((used)) static void
release_object(Obj_Entry *obj)
{

 if (obj->holdcount > 0) {
  obj->unholdfree = 1;
  return;
 }
 munmap(obj->mapbase, obj->mapsize);
 linkmap_delete(obj);
 obj_free(obj);
}
