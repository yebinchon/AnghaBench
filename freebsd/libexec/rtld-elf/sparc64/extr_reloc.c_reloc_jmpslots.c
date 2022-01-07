
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int r_info; scalar_t__ r_offset; } ;
struct TYPE_11__ {scalar_t__ st_value; } ;
struct TYPE_10__ {int pltrelasize; int jmpslots_done; scalar_t__ relocbase; TYPE_3__* pltrela; } ;
typedef int RtldLockState ;
typedef TYPE_1__ Obj_Entry ;
typedef TYPE_2__ Elf_Sym ;
typedef TYPE_3__ Elf_Rela ;
typedef int Elf_Rel ;
typedef scalar_t__ Elf_Addr ;


 scalar_t__ ELF64_R_TYPE_ID (int ) ;
 int ELF_R_SYM (int ) ;
 scalar_t__ R_SPARC_JMP_SLOT ;
 int SYMLOOK_IN_PLT ;
 int assert (int) ;
 TYPE_2__* find_symdef (int ,TYPE_1__*,TYPE_1__ const**,int,int *,int *) ;
 int reloc_jmpslot (scalar_t__*,scalar_t__,TYPE_1__ const*,TYPE_1__*,int const*) ;

int
reloc_jmpslots(Obj_Entry *obj, int flags, RtldLockState *lockstate)
{
 const Obj_Entry *defobj;
 const Elf_Rela *relalim;
 const Elf_Rela *rela;
 const Elf_Sym *def;
 Elf_Addr *where;
 Elf_Addr target;

 relalim = (const Elf_Rela *)((const char *)obj->pltrela +
     obj->pltrelasize);
 for (rela = obj->pltrela; rela < relalim; rela++) {
  assert(ELF64_R_TYPE_ID(rela->r_info) == R_SPARC_JMP_SLOT);
  where = (Elf_Addr *)(obj->relocbase + rela->r_offset);
  def = find_symdef(ELF_R_SYM(rela->r_info), obj, &defobj,
      SYMLOOK_IN_PLT | flags, ((void*)0), lockstate);
  if (def == ((void*)0))
   return -1;
  target = (Elf_Addr)(defobj->relocbase + def->st_value);
  reloc_jmpslot(where, target, defobj, obj,
      (const Elf_Rel *)rela);
 }
 obj->jmpslots_done = 1;
 return (0);
}
