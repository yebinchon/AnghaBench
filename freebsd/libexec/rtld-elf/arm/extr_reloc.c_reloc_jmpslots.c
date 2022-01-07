
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int r_info; scalar_t__ r_offset; } ;
struct TYPE_12__ {scalar_t__ st_value; } ;
struct TYPE_11__ {int pltrelsize; int jmpslots_done; scalar_t__ relocbase; TYPE_3__* pltrel; } ;
typedef int RtldLockState ;
typedef TYPE_1__ Obj_Entry ;
typedef TYPE_2__ Elf_Sym ;
typedef TYPE_3__ Elf_Rel ;
typedef scalar_t__ Elf_Addr ;


 int ELF_R_SYM (int ) ;
 scalar_t__ ELF_R_TYPE (int ) ;
 scalar_t__ R_ARM_JUMP_SLOT ;
 int SYMLOOK_IN_PLT ;
 int assert (int) ;
 int dbg (char*) ;
 TYPE_2__* find_symdef (int ,TYPE_1__*,TYPE_1__ const**,int,int *,int *) ;
 int reloc_jmpslot (scalar_t__*,scalar_t__,TYPE_1__ const*,TYPE_1__*,TYPE_3__ const*) ;

int
reloc_jmpslots(Obj_Entry *obj, int flags, RtldLockState *lockstate)
{
 const Obj_Entry *defobj;
 const Elf_Rel *rellim;
 const Elf_Rel *rel;
 const Elf_Sym *def;
 Elf_Addr *where;
 Elf_Addr target;

 rellim = (const Elf_Rel *)((const char *)obj->pltrel + obj->pltrelsize);
 for (rel = obj->pltrel; rel < rellim; rel++) {
  assert(ELF_R_TYPE(rel->r_info) == R_ARM_JUMP_SLOT);
  where = (Elf_Addr *)(obj->relocbase + rel->r_offset);
  def = find_symdef(ELF_R_SYM(rel->r_info), obj, &defobj,
      SYMLOOK_IN_PLT | flags, ((void*)0), lockstate);
  if (def == ((void*)0)) {
   dbg("reloc_jmpslots: sym not found");
   return (-1);
  }

  target = (Elf_Addr)(defobj->relocbase + def->st_value);
  reloc_jmpslot(where, target, defobj, obj,
      (const Elf_Rel *) rel);
 }

 obj->jmpslots_done = 1;

 return (0);
}
