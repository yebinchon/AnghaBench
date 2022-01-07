
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct Struct_RtldLockState {int dummy; } ;
struct TYPE_5__ {scalar_t__ r_offset; scalar_t__ r_addend; int r_info; } ;
struct TYPE_4__ {int irelative; int pltrelasize; scalar_t__ relocbase; TYPE_2__* pltrela; } ;
typedef TYPE_1__ Obj_Entry ;
typedef TYPE_2__ Elf_Rela ;
typedef int Elf_Addr ;


 scalar_t__ ELF_R_TYPE (int ) ;
 scalar_t__ R_AARCH64_IRELATIVE ;
 int call_ifunc_resolver (int *) ;
 int lock_release (int ,struct Struct_RtldLockState*) ;
 int rtld_bind_lock ;
 int wlock_acquire (int ,struct Struct_RtldLockState*) ;

int
reloc_iresolve(Obj_Entry *obj, struct Struct_RtldLockState *lockstate)
{
 const Elf_Rela *relalim;
 const Elf_Rela *rela;
 Elf_Addr *where, target, *ptr;

 if (!obj->irelative)
  return (0);
 relalim = (const Elf_Rela *)((const char *)obj->pltrela + obj->pltrelasize);
 for (rela = obj->pltrela; rela < relalim; rela++) {
  if (ELF_R_TYPE(rela->r_info) == R_AARCH64_IRELATIVE) {
   ptr = (Elf_Addr *)(obj->relocbase + rela->r_addend);
   where = (Elf_Addr *)(obj->relocbase + rela->r_offset);
   lock_release(rtld_bind_lock, lockstate);
   target = call_ifunc_resolver(ptr);
   wlock_acquire(rtld_bind_lock, lockstate);
   *where = target;
  }
 }
 obj->irelative = 0;
 return (0);
}
