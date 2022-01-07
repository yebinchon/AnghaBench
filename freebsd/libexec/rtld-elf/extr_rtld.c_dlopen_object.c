
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {int z_nodelete; int ref_nodel; int linkmap; int dl_refcount; int path; int dagmembers; scalar_t__ static_tls; int refcount; } ;
typedef int RtldLockState ;
typedef int Objlist ;
typedef TYPE_1__ Obj_Entry ;


 int GDB_STATE (int ,int *) ;
 int LD_UTRACE (int ,TYPE_1__*,int *,int ,int ,char const*) ;
 int RTLD_GLOBAL ;
 int RTLD_LO_DLOPEN ;
 int RTLD_LO_EARLY ;
 int RTLD_LO_NODELETE ;
 int RTLD_LO_TRACE ;
 int RTLD_MODEMASK ;
 int RTLD_NOW ;
 int RT_ADD ;
 int RT_CONSISTENT ;
 int SYMLOOK_EARLY ;
 int TAILQ_LAST (int *,int ) ;
 int UTRACE_DLOPEN_STOP ;
 int _rtld_error (char*,int ) ;
 int allocate_tls_offset (TYPE_1__*) ;
 int assert (int) ;
 int dbg (char*,int ) ;
 int distribute_static_tls (int *,int *) ;
 int dlopen_cleanup (TYPE_1__*,int *) ;
 int exit (int ) ;
 TYPE_1__* globallist_curr (int ) ;
 TYPE_1__* globallist_next (TYPE_1__*) ;
 int init_dag (TYPE_1__*) ;
 int initlist_add_objects (TYPE_1__*,TYPE_1__*,int *) ;
 int initlist_objects_ifunc (int *,int,int ,int *) ;
 scalar_t__ ld_tracing ;
 int list_global ;
 int load_needed_objects (TYPE_1__*,int) ;
 TYPE_1__* load_object (char const*,int,TYPE_1__*,int) ;
 int lock_release (int ,int *) ;
 int map_stacks_exec (int *) ;
 int obj_entry_q ;
 int obj_list ;
 TYPE_1__* obj_main ;
 int obj_rtld ;
 int objlist_call_init (int *,int *) ;
 int objlist_clear (int *) ;
 int * objlist_find (int *,TYPE_1__*) ;
 int objlist_init (int *) ;
 int objlist_push_tail (int *,TYPE_1__*) ;
 int process_z (TYPE_1__*) ;
 int ref_dag (TYPE_1__*) ;
 int relocate_object_dag (TYPE_1__*,int,int *,int ,int *) ;
 int rtld_bind_lock ;
 int rtld_verify_versions (int *) ;
 int trace_loaded_objects (TYPE_1__*) ;
 int wlock_acquire (int ,int *) ;

__attribute__((used)) static Obj_Entry *
dlopen_object(const char *name, int fd, Obj_Entry *refobj, int lo_flags,
    int mode, RtldLockState *lockstate)
{
    Obj_Entry *old_obj_tail;
    Obj_Entry *obj;
    Objlist initlist;
    RtldLockState mlockstate;
    int result;

    objlist_init(&initlist);

    if (lockstate == ((void*)0) && !(lo_flags & RTLD_LO_EARLY)) {
 wlock_acquire(rtld_bind_lock, &mlockstate);
 lockstate = &mlockstate;
    }
    GDB_STATE(RT_ADD,((void*)0));

    old_obj_tail = globallist_curr(TAILQ_LAST(&obj_list, obj_entry_q));
    obj = ((void*)0);
    if (name == ((void*)0) && fd == -1) {
 obj = obj_main;
 obj->refcount++;
    } else {
 obj = load_object(name, fd, refobj, lo_flags);
    }

    if (obj) {
 obj->dl_refcount++;
 if (mode & RTLD_GLOBAL && objlist_find(&list_global, obj) == ((void*)0))
     objlist_push_tail(&list_global, obj);
 if (globallist_next(old_obj_tail) != ((void*)0)) {

     assert(globallist_next(old_obj_tail) == obj);
     result = 0;
     if ((lo_flags & RTLD_LO_EARLY) == 0 && obj->static_tls &&
       !allocate_tls_offset(obj)) {
  _rtld_error("%s: No space available "
    "for static Thread Local Storage", obj->path);
  result = -1;
     }
     if (result != -1)
  result = load_needed_objects(obj, lo_flags & (RTLD_LO_DLOPEN |
      RTLD_LO_EARLY));
     init_dag(obj);
     ref_dag(obj);
     if (result != -1)
  result = rtld_verify_versions(&obj->dagmembers);
     if (result != -1 && ld_tracing)
  goto trace;
     if (result == -1 || relocate_object_dag(obj,
       (mode & RTLD_MODEMASK) == RTLD_NOW, &obj_rtld,
       (lo_flags & RTLD_LO_EARLY) ? SYMLOOK_EARLY : 0,
       lockstate) == -1) {
  dlopen_cleanup(obj, lockstate);
  obj = ((void*)0);
     } else if (lo_flags & RTLD_LO_EARLY) {
     } else {

  initlist_add_objects(obj, obj, &initlist);
     }






     if (obj != ((void*)0))
  process_z(obj);
 } else {






     init_dag(obj);
     ref_dag(obj);

     if ((lo_flags & RTLD_LO_TRACE) != 0)
  goto trace;
 }
 if (obj != ((void*)0) && ((lo_flags & RTLD_LO_NODELETE) != 0 ||
   obj->z_nodelete) && !obj->ref_nodel) {
     dbg("obj %s nodelete", obj->path);
     ref_dag(obj);
     obj->z_nodelete = obj->ref_nodel = 1;
 }
    }

    LD_UTRACE(UTRACE_DLOPEN_STOP, obj, ((void*)0), 0, obj ? obj->dl_refcount : 0,
 name);
    GDB_STATE(RT_CONSISTENT,obj ? &obj->linkmap : ((void*)0));

    if ((lo_flags & RTLD_LO_EARLY) == 0) {
 map_stacks_exec(lockstate);
 if (obj != ((void*)0))
     distribute_static_tls(&initlist, lockstate);
    }

    if (initlist_objects_ifunc(&initlist, (mode & RTLD_MODEMASK) == RTLD_NOW,
      (lo_flags & RTLD_LO_EARLY) ? SYMLOOK_EARLY : 0,
      lockstate) == -1) {
 objlist_clear(&initlist);
 dlopen_cleanup(obj, lockstate);
 if (lockstate == &mlockstate)
     lock_release(rtld_bind_lock, lockstate);
 return (((void*)0));
    }

    if (!(lo_flags & RTLD_LO_EARLY)) {

 objlist_call_init(&initlist, lockstate);
    }
    objlist_clear(&initlist);
    if (lockstate == &mlockstate)
 lock_release(rtld_bind_lock, lockstate);
    return obj;
trace:
    trace_loaded_objects(obj);
    if (lockstate == &mlockstate)
 lock_release(rtld_bind_lock, lockstate);
    exit(0);
}
