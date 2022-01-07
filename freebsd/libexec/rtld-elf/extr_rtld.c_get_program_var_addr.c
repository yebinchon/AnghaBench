
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ st_value; int st_info; } ;
struct TYPE_9__ {scalar_t__ relocbase; } ;
struct TYPE_8__ {TYPE_5__* sym_out; TYPE_4__* defobj_out; int * lockstate; } ;
typedef TYPE_1__ SymLook ;
typedef int RtldLockState ;
typedef int DoneList ;


 scalar_t__ ELF_ST_TYPE (int ) ;
 scalar_t__ STT_FUNC ;
 scalar_t__ STT_GNU_IFUNC ;
 int donelist_init (int *) ;
 scalar_t__ make_function_pointer (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ rtld_resolve_ifunc (TYPE_4__*,TYPE_5__*) ;
 scalar_t__ symlook_global (TYPE_1__*,int *) ;
 int symlook_init (TYPE_1__*,char const*) ;

__attribute__((used)) static const void **
get_program_var_addr(const char *name, RtldLockState *lockstate)
{
    SymLook req;
    DoneList donelist;

    symlook_init(&req, name);
    req.lockstate = lockstate;
    donelist_init(&donelist);
    if (symlook_global(&req, &donelist) != 0)
 return (((void*)0));
    if (ELF_ST_TYPE(req.sym_out->st_info) == STT_FUNC)
 return ((const void **)make_function_pointer(req.sym_out,
   req.defobj_out));
    else if (ELF_ST_TYPE(req.sym_out->st_info) == STT_GNU_IFUNC)
 return ((const void **)rtld_resolve_ifunc(req.defobj_out, req.sym_out));
    else
 return ((const void **)(req.defobj_out->relocbase +
   req.sym_out->st_value));
}
