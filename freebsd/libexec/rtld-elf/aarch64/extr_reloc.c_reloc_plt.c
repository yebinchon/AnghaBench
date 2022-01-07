
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int r_info; scalar_t__ r_offset; } ;
struct TYPE_6__ {int pltrelasize; int irelative; scalar_t__ relocbase; TYPE_2__* pltrela; } ;
typedef int RtldLockState ;
typedef TYPE_1__ Obj_Entry ;
typedef TYPE_2__ Elf_Rela ;
typedef int Elf_Addr ;


 int ELF_R_TYPE (int ) ;




 int SYMLOOK_IN_PLT ;
 int _rtld_error (char*,unsigned int) ;
 int reloc_tlsdesc (TYPE_1__*,TYPE_2__ const*,int *,int,int *) ;

int
reloc_plt(Obj_Entry *obj, int flags, RtldLockState *lockstate)
{
 const Elf_Rela *relalim;
 const Elf_Rela *rela;

 relalim = (const Elf_Rela *)((const char *)obj->pltrela +
     obj->pltrelasize);
 for (rela = obj->pltrela; rela < relalim; rela++) {
  Elf_Addr *where;

  where = (Elf_Addr *)(obj->relocbase + rela->r_offset);

  switch(ELF_R_TYPE(rela->r_info)) {
  case 130:
   *where += (Elf_Addr)obj->relocbase;
   break;
  case 128:
   reloc_tlsdesc(obj, rela, where, SYMLOOK_IN_PLT | flags,
       lockstate);
   break;
  case 131:
   obj->irelative = 1;
   break;
  case 129:
   break;
  default:
   _rtld_error("Unknown relocation type %u in PLT",
       (unsigned int)ELF_R_TYPE(rela->r_info));
   return (-1);
  }
 }

 return (0);
}
