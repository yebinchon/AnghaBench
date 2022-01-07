
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dl_phdr_info {int dlpi_phnum; uintptr_t dlpi_addr; TYPE_1__* dlpi_phdr; } ;
typedef int addr ;
struct TYPE_2__ {scalar_t__ p_type; int p_flags; uintptr_t p_vaddr; uintptr_t p_memsz; } ;
typedef TYPE_1__ Elf_Phdr ;


 int PF_X ;
 scalar_t__ PT_LOAD ;

int
__elf_phdr_match_addr(struct dl_phdr_info *phdr_info, void *addr)
{
 const Elf_Phdr *ph;
 int i;

 for (i = 0; i < phdr_info->dlpi_phnum; i++) {
  ph = &phdr_info->dlpi_phdr[i];
  if (ph->p_type != PT_LOAD)
   continue;
  if ((ph->p_flags & PF_X) == 0)
   continue;


  if (phdr_info->dlpi_addr + ph->p_vaddr <= (uintptr_t)addr &&
      (uintptr_t)addr + sizeof(addr) < phdr_info->dlpi_addr +
      ph->p_vaddr + ph->p_memsz)
   break;
 }
 return (i != phdr_info->dlpi_phnum);
}
