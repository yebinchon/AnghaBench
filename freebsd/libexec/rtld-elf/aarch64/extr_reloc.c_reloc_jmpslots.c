
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int r_info; scalar_t__ r_offset; } ;
struct TYPE_11__ {scalar_t__ st_value; int st_info; } ;
struct TYPE_10__ {int jmpslots_done; int pltrelasize; int gnu_ifunc; scalar_t__ relocbase; TYPE_3__* pltrela; } ;
typedef int RtldLockState ;
typedef TYPE_1__ Obj_Entry ;
typedef TYPE_2__ Elf_Sym ;
typedef TYPE_3__ Elf_Rela ;
typedef int Elf_Rel ;
typedef int Elf_Addr ;


 int ELF_R_SYM (int ) ;
 int ELF_R_TYPE (int ) ;
 int ELF_ST_TYPE (int ) ;

 int STT_GNU_IFUNC ;
 int SYMLOOK_IN_PLT ;
 TYPE_2__* find_symdef (int ,TYPE_1__*,TYPE_1__ const**,int,int *,int *) ;
 int reloc_jmpslot (int *,int ,TYPE_1__ const*,TYPE_1__*,int const*) ;

int
reloc_jmpslots(Obj_Entry *obj, int flags, RtldLockState *lockstate)
{
 const Obj_Entry *defobj;
 const Elf_Rela *relalim;
 const Elf_Rela *rela;
 const Elf_Sym *def;

 if (obj->jmpslots_done)
  return (0);

 relalim = (const Elf_Rela *)((const char *)obj->pltrela +
     obj->pltrelasize);
 for (rela = obj->pltrela; rela < relalim; rela++) {
  Elf_Addr *where, target;

  where = (Elf_Addr *)(obj->relocbase + rela->r_offset);
  switch(ELF_R_TYPE(rela->r_info)) {
  case 128:
   def = find_symdef(ELF_R_SYM(rela->r_info), obj,
       &defobj, SYMLOOK_IN_PLT | flags, ((void*)0), lockstate);
   if (def == ((void*)0))
    return (-1);
   if (ELF_ST_TYPE(def->st_info) == STT_GNU_IFUNC) {
    obj->gnu_ifunc = 1;
    continue;
   }
   target = (Elf_Addr)(defobj->relocbase + def->st_value);
   reloc_jmpslot(where, target, defobj, obj,
       (const Elf_Rel *)rela);
   break;
  }
 }
 obj->jmpslots_done = 1;

 return (0);
}
