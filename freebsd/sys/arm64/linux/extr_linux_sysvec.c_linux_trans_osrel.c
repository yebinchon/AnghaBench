
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int n_namesz; } ;
typedef TYPE_1__ Elf_Note ;
typedef scalar_t__ Elf32_Word ;
typedef int Elf32_Addr ;


 scalar_t__ const GNU_ABI_LINUX ;
 int LINUX_KERNVER (scalar_t__ const,scalar_t__ const,scalar_t__ const) ;
 scalar_t__ roundup2 (int ,int) ;

__attribute__((used)) static bool
linux_trans_osrel(const Elf_Note *note, int32_t *osrel)
{
 const Elf32_Word *desc;
 uintptr_t p;

 p = (uintptr_t)(note + 1);
 p += roundup2(note->n_namesz, sizeof(Elf32_Addr));

 desc = (const Elf32_Word *)p;
 if (desc[0] != GNU_ABI_LINUX)
  return (0);

 *osrel = LINUX_KERNVER(desc[1], desc[2], desc[3]);
 return (1);
}
