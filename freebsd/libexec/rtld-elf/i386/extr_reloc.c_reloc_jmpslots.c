
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int r_info; scalar_t__ r_offset; } ;
struct TYPE_12__ {scalar_t__ st_value; int st_info; } ;
struct TYPE_11__ {int jmpslots_done; int pltrelsize; int gnu_ifunc; scalar_t__ relocbase; TYPE_3__* pltrel; } ;
typedef int RtldLockState ;
typedef TYPE_1__ Obj_Entry ;
typedef TYPE_2__ Elf_Sym ;
typedef TYPE_3__ Elf_Rel ;
typedef int Elf_Addr ;


 int ELF_R_SYM (int ) ;
 int ELF_R_TYPE (int ) ;
 int ELF_ST_TYPE (int ) ;


 int STT_GNU_IFUNC ;
 int SYMLOOK_IN_PLT ;
 int _rtld_error (char*,int) ;
 TYPE_2__* find_symdef (int ,TYPE_1__*,TYPE_1__ const**,int,int *,int *) ;
 int reloc_jmpslot (int *,int ,TYPE_1__ const*,TYPE_1__*,TYPE_3__ const*) ;

int
reloc_jmpslots(Obj_Entry *obj, int flags, RtldLockState *lockstate)
{
    const Elf_Rel *rellim;
    const Elf_Rel *rel;

    if (obj->jmpslots_done)
 return 0;
    rellim = (const Elf_Rel *)((const char *)obj->pltrel + obj->pltrelsize);
    for (rel = obj->pltrel; rel < rellim; rel++) {
 Elf_Addr *where, target;
 const Elf_Sym *def;
 const Obj_Entry *defobj;

 switch (ELF_R_TYPE(rel->r_info)) {
 case 128:
   where = (Elf_Addr *)(obj->relocbase + rel->r_offset);
   def = find_symdef(ELF_R_SYM(rel->r_info), obj, &defobj,
  SYMLOOK_IN_PLT | flags, ((void*)0), lockstate);
   if (def == ((void*)0))
       return (-1);
   if (ELF_ST_TYPE(def->st_info) == STT_GNU_IFUNC) {
       obj->gnu_ifunc = 1;
       continue;
   }
   target = (Elf_Addr)(defobj->relocbase + def->st_value);
   reloc_jmpslot(where, target, defobj, obj, rel);
   break;

 case 129:
   break;

 default:
   _rtld_error("Unknown relocation type %x in PLT",
     ELF_R_TYPE(rel->r_info));
   return (-1);
 }
    }

    obj->jmpslots_done = 1;
    return 0;
}
