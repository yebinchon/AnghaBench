
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ r_offset; int r_info; } ;
struct TYPE_4__ {int irelative; int pltrelsize; scalar_t__ relocbase; TYPE_2__* pltrel; } ;
typedef int RtldLockState ;
typedef TYPE_1__ Obj_Entry ;
typedef TYPE_2__ Elf_Rel ;
typedef scalar_t__ Elf_Addr ;


 int ELF_R_TYPE (int ) ;

 scalar_t__ call_ifunc_resolver (scalar_t__) ;
 int lock_release (int ,int *) ;
 int rtld_bind_lock ;
 int wlock_acquire (int ,int *) ;

int
reloc_iresolve(Obj_Entry *obj, RtldLockState *lockstate)
{
    const Elf_Rel *rellim;
    const Elf_Rel *rel;
    Elf_Addr *where, target;

    if (!obj->irelative)
 return (0);
    rellim = (const Elf_Rel *)((const char *)obj->pltrel + obj->pltrelsize);
    for (rel = obj->pltrel; rel < rellim; rel++) {
 switch (ELF_R_TYPE(rel->r_info)) {
 case 128:
   where = (Elf_Addr *)(obj->relocbase + rel->r_offset);
   lock_release(rtld_bind_lock, lockstate);
   target = call_ifunc_resolver(obj->relocbase + *where);
   wlock_acquire(rtld_bind_lock, lockstate);
   *where = target;
   break;
 }
    }
    obj->irelative = 0;
    return (0);
}
