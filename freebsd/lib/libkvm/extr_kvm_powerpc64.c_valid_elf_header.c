
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* e_ident; int e_machine; int e_type; } ;
typedef TYPE_1__ Elf64_Ehdr ;


 size_t EI_CLASS ;
 size_t EI_DATA ;
 size_t EI_OSABI ;
 size_t EI_VERSION ;
 scalar_t__ ELFCLASS64 ;
 scalar_t__ ELFDATA2MSB ;
 scalar_t__ ELFOSABI_STANDALONE ;
 scalar_t__ EM_PPC64 ;
 scalar_t__ ET_CORE ;
 scalar_t__ EV_CURRENT ;
 int IS_ELF (TYPE_1__) ;
 scalar_t__ be16toh (int ) ;

__attribute__((used)) static int
valid_elf_header(Elf64_Ehdr *eh)
{

 if (!IS_ELF(*eh))
  return (0);
 if (eh->e_ident[EI_CLASS] != ELFCLASS64)
  return (0);
 if (eh->e_ident[EI_DATA] != ELFDATA2MSB)
  return (0);
 if (eh->e_ident[EI_VERSION] != EV_CURRENT)
  return (0);
 if (eh->e_ident[EI_OSABI] != ELFOSABI_STANDALONE)
  return (0);
 if (be16toh(eh->e_type) != ET_CORE)
  return (0);
 if (be16toh(eh->e_machine) != EM_PPC64)
  return (0);

 return (1);
}
