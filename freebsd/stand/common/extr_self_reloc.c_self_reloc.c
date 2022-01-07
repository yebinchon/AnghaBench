
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ caddr_t ;
struct TYPE_5__ {scalar_t__ d_val; scalar_t__ d_ptr; } ;
struct TYPE_7__ {int d_tag; TYPE_1__ d_un; } ;
struct TYPE_6__ {scalar_t__ r_addend; scalar_t__ r_offset; int r_info; } ;
typedef scalar_t__ Elf_Word ;
typedef scalar_t__ Elf_Addr ;
typedef TYPE_2__ ElfW_Rel ;
typedef TYPE_3__ ElfW_Dyn ;


 int DT_NULL ;






 int ELFW_R_TYPE (int ) ;



void
self_reloc(Elf_Addr baseaddr, ElfW_Dyn *dynamic)
{
 Elf_Word relsz, relent;
 Elf_Addr *newaddr;
 ElfW_Rel *rel;
 ElfW_Dyn *dynp;




 relsz = 0;
 relent = 0;
 for (dynp = dynamic; dynp->d_tag != DT_NULL; dynp++) {
  switch (dynp->d_tag) {
  case 135:
  case 134:
   rel = (ElfW_Rel *)(dynp->d_un.d_ptr + baseaddr);
   break;
  case 130:
  case 132:
   relsz = dynp->d_un.d_val;
   break;
  case 131:
  case 133:
   relent = dynp->d_un.d_val;
   break;
  default:
   break;
  }
 }






 for (; relsz > 0; relsz -= relent) {
  switch (ELFW_R_TYPE(rel->r_info)) {
  case 129:

   break;

  case 128:
   newaddr = (Elf_Addr *)(rel->r_offset + baseaddr);





   *newaddr += baseaddr;

   break;
  default:

   break;
  }
  rel = (ElfW_Rel *)(void *)((caddr_t) rel + relent);
 }
}
