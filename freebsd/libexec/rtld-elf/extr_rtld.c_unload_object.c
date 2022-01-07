
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ refcount; scalar_t__ filtees_loaded; int path; int mapsize; int mapbase; scalar_t__ marker; } ;
typedef int RtldLockState ;
typedef TYPE_1__ Obj_Entry ;


 int LD_UTRACE (int ,TYPE_1__*,int ,int ,int ,int ) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_BEFORE (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,TYPE_1__*) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,TYPE_1__*) ;
 int UTRACE_UNLOAD_OBJECT ;
 int assert (int) ;
 int dbg (char*,int ) ;
 int init_marker (TYPE_1__*) ;
 int obj_count ;
 int obj_list ;
 int release_object (TYPE_1__*) ;
 int unlink_object (TYPE_1__*) ;
 int unload_filtees (TYPE_1__*,int *) ;

__attribute__((used)) static void
unload_object(Obj_Entry *root, RtldLockState *lockstate)
{
 Obj_Entry marker, *obj, *next;

 assert(root->refcount == 0);





 unlink_object(root);


 for (obj = TAILQ_FIRST(&obj_list); obj != ((void*)0); obj = next) {
  next = TAILQ_NEXT(obj, next);
  if (obj->marker || obj->refcount != 0)
   continue;
  LD_UTRACE(UTRACE_UNLOAD_OBJECT, obj, obj->mapbase,
      obj->mapsize, 0, obj->path);
  dbg("unloading \"%s\"", obj->path);





  TAILQ_REMOVE(&obj_list, obj, next);
  obj_count--;

  if (obj->filtees_loaded) {
   if (next != ((void*)0)) {
    init_marker(&marker);
    TAILQ_INSERT_BEFORE(next, &marker, next);
    unload_filtees(obj, lockstate);
    next = TAILQ_NEXT(&marker, next);
    TAILQ_REMOVE(&obj_list, &marker, next);
   } else
    unload_filtees(obj, lockstate);
  }
  release_object(obj);
 }
}
