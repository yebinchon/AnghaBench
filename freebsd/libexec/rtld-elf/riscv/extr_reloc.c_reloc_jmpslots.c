
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int r_info; scalar_t__ r_offset; } ;
struct TYPE_9__ {scalar_t__ st_value; } ;
struct TYPE_8__ {int pltrelasize; scalar_t__ relocbase; TYPE_3__* pltrela; } ;
typedef int RtldLockState ;
typedef TYPE_1__ Obj_Entry ;
typedef TYPE_2__ Elf_Sym ;
typedef TYPE_3__ Elf_Rela ;
typedef int Elf_Addr ;


 int ELF_R_SYM (int ) ;
 int ELF_R_TYPE (int ) ;

 int SYMLOOK_IN_PLT ;
 int _rtld_error (char*,unsigned int) ;
 int dbg (char*) ;
 TYPE_2__* find_symdef (int ,TYPE_1__*,TYPE_1__ const**,int,int *,int *) ;

int
reloc_jmpslots(Obj_Entry *obj, int flags, RtldLockState *lockstate)
{
 const Obj_Entry *defobj;
 const Elf_Rela *relalim;
 const Elf_Rela *rela;
 const Elf_Sym *def;

 relalim = (const Elf_Rela *)((const char *)obj->pltrela +
     obj->pltrelasize);
 for (rela = obj->pltrela; rela < relalim; rela++) {
  Elf_Addr *where;

  where = (Elf_Addr *)(obj->relocbase + rela->r_offset);
  switch(ELF_R_TYPE(rela->r_info)) {
  case 128:
   def = find_symdef(ELF_R_SYM(rela->r_info), obj,
       &defobj, SYMLOOK_IN_PLT | flags, ((void*)0), lockstate);
   if (def == ((void*)0)) {
    dbg("reloc_jmpslots: sym not found");
    return (-1);
   }

   *where = (Elf_Addr)(defobj->relocbase + def->st_value);
   break;
  default:
   _rtld_error("Unknown relocation type %x in jmpslot",
       (unsigned int)ELF_R_TYPE(rela->r_info));
   return (-1);
  }
 }

 return (0);
}
