
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int d_ptr; int d_val; } ;
struct TYPE_7__ {int d_tag; TYPE_1__ d_un; } ;
struct TYPE_6__ {int r_offset; int r_addend; } ;
typedef TYPE_2__ Elf_Rela ;
typedef TYPE_3__ Elf_Dyn ;
typedef int Elf_Addr ;


 int DT_NULL ;



void
reloc_non_plt_self(Elf_Dyn *dynp, Elf_Addr relocbase)
{
 const Elf_Rela *rela = ((void*)0), *relalim;
 Elf_Addr relasz = 0;
 Elf_Addr *where;




 for (; dynp->d_tag != DT_NULL; dynp++) {
  switch (dynp->d_tag) {
  case 129:
   rela = (const Elf_Rela *)(relocbase+dynp->d_un.d_ptr);
   break;
  case 128:
   relasz = dynp->d_un.d_val;
   break;
  }
 }




 relalim = (const Elf_Rela *)((const char *)rela + relasz);
 for (; rela < relalim; rela++) {
  where = (Elf_Addr *)(relocbase + rela->r_offset);
  *where = (Elf_Addr)(relocbase + rela->r_addend);
 }
}
