
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct Struct_RtldLockState {int dummy; } ;
struct TYPE_14__ {int r_info; scalar_t__ r_offset; } ;
struct TYPE_13__ {int st_info; } ;
struct TYPE_12__ {int gnu_ifunc; int pltrelasize; scalar_t__ relocbase; TYPE_3__* pltrela; } ;
typedef TYPE_1__ Obj_Entry ;
typedef TYPE_2__ Elf_Sym ;
typedef TYPE_3__ Elf_Rela ;
typedef int Elf_Rel ;
typedef scalar_t__ Elf_Addr ;


 int ELF_R_SYM (int ) ;
 scalar_t__ ELF_R_TYPE (int ) ;
 scalar_t__ ELF_ST_TYPE (int ) ;
 scalar_t__ R_AARCH64_JUMP_SLOT ;
 scalar_t__ STT_GNU_IFUNC ;
 int SYMLOOK_IN_PLT ;
 TYPE_2__* find_symdef (int ,TYPE_1__*,TYPE_1__ const**,int,int *,struct Struct_RtldLockState*) ;
 int lock_release (int ,struct Struct_RtldLockState*) ;
 int reloc_jmpslot (scalar_t__*,scalar_t__,TYPE_1__ const*,TYPE_1__*,int const*) ;
 int rtld_bind_lock ;
 scalar_t__ rtld_resolve_ifunc (TYPE_1__ const*,TYPE_2__ const*) ;
 int wlock_acquire (int ,struct Struct_RtldLockState*) ;

int
reloc_gnu_ifunc(Obj_Entry *obj, int flags,
   struct Struct_RtldLockState *lockstate)
{
 const Elf_Rela *relalim;
 const Elf_Rela *rela;
 Elf_Addr *where, target;
 const Elf_Sym *def;
 const Obj_Entry *defobj;

 if (!obj->gnu_ifunc)
  return (0);
 relalim = (const Elf_Rela *)((const char *)obj->pltrela + obj->pltrelasize);
 for (rela = obj->pltrela; rela < relalim; rela++) {
  if (ELF_R_TYPE(rela->r_info) == R_AARCH64_JUMP_SLOT) {
   where = (Elf_Addr *)(obj->relocbase + rela->r_offset);
   def = find_symdef(ELF_R_SYM(rela->r_info), obj, &defobj,
       SYMLOOK_IN_PLT | flags, ((void*)0), lockstate);
   if (def == ((void*)0))
    return (-1);
   if (ELF_ST_TYPE(def->st_info) != STT_GNU_IFUNC)
    continue;
   lock_release(rtld_bind_lock, lockstate);
   target = (Elf_Addr)rtld_resolve_ifunc(defobj, def);
   wlock_acquire(rtld_bind_lock, lockstate);
   reloc_jmpslot(where, target, defobj, obj,
       (const Elf_Rel *)rela);
  }
 }
 obj->gnu_ifunc = 0;
 return (0);
}
