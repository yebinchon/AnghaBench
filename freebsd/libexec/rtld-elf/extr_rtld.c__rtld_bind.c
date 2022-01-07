
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_21__ {int r_info; scalar_t__ r_offset; } ;
struct TYPE_20__ {scalar_t__ st_name; scalar_t__ st_value; int st_info; } ;
struct TYPE_19__ {int path; scalar_t__ strtab; scalar_t__ relocbase; scalar_t__ pltrela; scalar_t__ pltrel; } ;
struct TYPE_18__ {int env; } ;
typedef TYPE_1__ RtldLockState ;
typedef TYPE_2__ Obj_Entry ;
typedef TYPE_3__ Elf_Sym ;
typedef int Elf_Size ;
typedef TYPE_4__ Elf_Rel ;
typedef scalar_t__ Elf_Addr ;


 int ELF_R_SYM (int ) ;
 scalar_t__ ELF_ST_TYPE (int ) ;
 scalar_t__ STT_GNU_IFUNC ;
 int SYMLOOK_IN_PLT ;
 int basename (int ) ;
 int dbg (char*,scalar_t__,int ,void*,int ) ;
 TYPE_3__* find_symdef (int ,TYPE_2__*,TYPE_2__ const**,int ,int *,TYPE_1__*) ;
 int lock_release (int ,TYPE_1__*) ;
 int lock_upgrade (int ,TYPE_1__*) ;
 scalar_t__ reloc_jmpslot (scalar_t__*,scalar_t__,TYPE_2__ const*,TYPE_2__*,TYPE_4__ const*) ;
 int rlock_acquire (int ,TYPE_1__*) ;
 int rtld_bind_lock ;
 int rtld_die () ;
 scalar_t__ rtld_resolve_ifunc (TYPE_2__ const*,TYPE_3__ const*) ;
 scalar_t__ sigsetjmp (int ,int ) ;

Elf_Addr
_rtld_bind(Obj_Entry *obj, Elf_Size reloff)
{
    const Elf_Rel *rel;
    const Elf_Sym *def;
    const Obj_Entry *defobj;
    Elf_Addr *where;
    Elf_Addr target;
    RtldLockState lockstate;

    rlock_acquire(rtld_bind_lock, &lockstate);
    if (sigsetjmp(lockstate.env, 0) != 0)
     lock_upgrade(rtld_bind_lock, &lockstate);
    if (obj->pltrel)
 rel = (const Elf_Rel *)((const char *)obj->pltrel + reloff);
    else
 rel = (const Elf_Rel *)((const char *)obj->pltrela + reloff);

    where = (Elf_Addr *)(obj->relocbase + rel->r_offset);
    def = find_symdef(ELF_R_SYM(rel->r_info), obj, &defobj, SYMLOOK_IN_PLT,
 ((void*)0), &lockstate);
    if (def == ((void*)0))
 rtld_die();
    if (ELF_ST_TYPE(def->st_info) == STT_GNU_IFUNC)
 target = (Elf_Addr)rtld_resolve_ifunc(defobj, def);
    else
 target = (Elf_Addr)(defobj->relocbase + def->st_value);

    dbg("\"%s\" in \"%s\" ==> %p in \"%s\"",
      defobj->strtab + def->st_name, basename(obj->path),
      (void *)target, basename(defobj->path));
    target = reloc_jmpslot(where, target, defobj, obj, rel);
    lock_release(rtld_bind_lock, &lockstate);
    return target;
}
