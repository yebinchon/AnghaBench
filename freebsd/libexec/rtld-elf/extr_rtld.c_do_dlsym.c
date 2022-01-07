
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


struct TYPE_30__ {int ti_offset; int ti_module; } ;
typedef TYPE_1__ tls_index ;
struct TYPE_31__ {char* name; } ;
typedef TYPE_2__ Ver_Entry ;
struct TYPE_35__ {int st_value; int st_info; } ;
struct TYPE_34__ {void* relocbase; int tlsindex; int dagmembers; scalar_t__ mainprog; scalar_t__ marker; } ;
struct TYPE_33__ {int env; } ;
struct TYPE_32__ {int flags; TYPE_5__* defobj_out; TYPE_6__* sym_out; TYPE_4__* lockstate; TYPE_2__ const* ventry; } ;
typedef TYPE_3__ SymLook ;
typedef TYPE_4__ RtldLockState ;
typedef TYPE_5__ Obj_Entry ;
typedef TYPE_6__ Elf_Sym ;
typedef int DoneList ;


 scalar_t__ ELF_ST_BIND (int ) ;
 scalar_t__ ELF_ST_TYPE (int ) ;
 int LD_UTRACE (int ,void*,void*,int ,int ,char const*) ;
 void* RTLD_DEFAULT ;
 void* RTLD_NEXT ;
 void* RTLD_SELF ;
 scalar_t__ STB_WEAK ;
 scalar_t__ STT_FUNC ;
 scalar_t__ STT_GNU_IFUNC ;
 scalar_t__ STT_TLS ;
 int SYMLOOK_IN_PLT ;
 TYPE_5__* TAILQ_NEXT (TYPE_5__ const*,int ) ;
 int UTRACE_DLSYM_START ;
 int UTRACE_DLSYM_STOP ;
 void* __tls_get_addr (TYPE_1__*) ;
 int _rtld_error (char*,...) ;
 int assert (int) ;
 TYPE_5__* dlcheck (void*) ;
 int donelist_init (int *) ;
 TYPE_5__* globallist_next (TYPE_5__ const*) ;
 int lock_release (int ,TYPE_4__*) ;
 int lock_upgrade (int ,TYPE_4__*) ;
 void* make_function_pointer (TYPE_6__ const*,TYPE_5__ const*) ;
 int next ;
 TYPE_5__* obj_from_addr (void*) ;
 TYPE_5__ const obj_rtld ;
 int rlock_acquire (int ,TYPE_4__*) ;
 int rtld_bind_lock ;
 void* rtld_resolve_ifunc (TYPE_5__ const*,TYPE_6__ const*) ;
 scalar_t__ sigsetjmp (int ,int ) ;
 int symlook_default (TYPE_3__*,TYPE_5__ const*) ;
 int symlook_global (TYPE_3__*,int *) ;
 int symlook_init (TYPE_3__*,char const*) ;
 int symlook_list (TYPE_3__*,int *,int *) ;
 int symlook_obj (TYPE_3__*,TYPE_5__ const*) ;

__attribute__((used)) static void *
do_dlsym(void *handle, const char *name, void *retaddr, const Ver_Entry *ve,
    int flags)
{
    DoneList donelist;
    const Obj_Entry *obj, *defobj;
    const Elf_Sym *def;
    SymLook req;
    RtldLockState lockstate;
    tls_index ti;
    void *sym;
    int res;

    def = ((void*)0);
    defobj = ((void*)0);
    symlook_init(&req, name);
    req.ventry = ve;
    req.flags = flags | SYMLOOK_IN_PLT;
    req.lockstate = &lockstate;

    LD_UTRACE(UTRACE_DLSYM_START, handle, ((void*)0), 0, 0, name);
    rlock_acquire(rtld_bind_lock, &lockstate);
    if (sigsetjmp(lockstate.env, 0) != 0)
     lock_upgrade(rtld_bind_lock, &lockstate);
    if (handle == ((void*)0) || handle == RTLD_NEXT ||
 handle == RTLD_DEFAULT || handle == RTLD_SELF) {

 if ((obj = obj_from_addr(retaddr)) == ((void*)0)) {
     _rtld_error("Cannot determine caller's shared object");
     lock_release(rtld_bind_lock, &lockstate);
     LD_UTRACE(UTRACE_DLSYM_STOP, handle, ((void*)0), 0, 0, name);
     return ((void*)0);
 }
 if (handle == ((void*)0)) {
     res = symlook_obj(&req, obj);
     if (res == 0) {
  def = req.sym_out;
  defobj = req.defobj_out;
     }
 } else if (handle == RTLD_NEXT ||
     handle == RTLD_SELF) {
     if (handle == RTLD_NEXT)
  obj = globallist_next(obj);
     for (; obj != ((void*)0); obj = TAILQ_NEXT(obj, next)) {
  if (obj->marker)
      continue;
  res = symlook_obj(&req, obj);
  if (res == 0) {
      if (def == ((void*)0) ||
        ELF_ST_BIND(req.sym_out->st_info) != STB_WEAK) {
   def = req.sym_out;
   defobj = req.defobj_out;
   if (ELF_ST_BIND(def->st_info) != STB_WEAK)
       break;
      }
  }
     }





     if (def == ((void*)0) || ELF_ST_BIND(def->st_info) == STB_WEAK) {
  res = symlook_obj(&req, &obj_rtld);
  if (res == 0) {
      def = req.sym_out;
      defobj = req.defobj_out;
  }
     }
 } else {
     assert(handle == RTLD_DEFAULT);
     res = symlook_default(&req, obj);
     if (res == 0) {
  defobj = req.defobj_out;
  def = req.sym_out;
     }
 }
    } else {
 if ((obj = dlcheck(handle)) == ((void*)0)) {
     lock_release(rtld_bind_lock, &lockstate);
     LD_UTRACE(UTRACE_DLSYM_STOP, handle, ((void*)0), 0, 0, name);
     return ((void*)0);
 }

 donelist_init(&donelist);
 if (obj->mainprog) {

     res = symlook_global(&req, &donelist);
     if (res == 0) {
  def = req.sym_out;
  defobj = req.defobj_out;
     }





     if (def == ((void*)0) || ELF_ST_BIND(def->st_info) == STB_WEAK) {
  res = symlook_obj(&req, &obj_rtld);
  if (res == 0) {
      def = req.sym_out;
      defobj = req.defobj_out;
  }
     }
 }
 else {

     res = symlook_list(&req, &obj->dagmembers, &donelist);
     if (res == 0) {
  def = req.sym_out;
  defobj = req.defobj_out;
     }
 }
    }

    if (def != ((void*)0)) {
 lock_release(rtld_bind_lock, &lockstate);






 if (ELF_ST_TYPE(def->st_info) == STT_FUNC)
     sym = make_function_pointer(def, defobj);
 else if (ELF_ST_TYPE(def->st_info) == STT_GNU_IFUNC)
     sym = rtld_resolve_ifunc(defobj, def);
 else if (ELF_ST_TYPE(def->st_info) == STT_TLS) {
     ti.ti_module = defobj->tlsindex;
     ti.ti_offset = def->st_value;
     sym = __tls_get_addr(&ti);
 } else
     sym = defobj->relocbase + def->st_value;
 LD_UTRACE(UTRACE_DLSYM_STOP, handle, sym, 0, 0, name);
 return (sym);
    }

    _rtld_error("Undefined symbol \"%s%s%s\"", name, ve != ((void*)0) ? "@" : "",
      ve != ((void*)0) ? ve->name : "");
    lock_release(rtld_bind_lock, &lockstate);
    LD_UTRACE(UTRACE_DLSYM_STOP, handle, ((void*)0), 0, 0, name);
    return ((void*)0);
}
