
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* e_ident; } ;
typedef TYPE_1__ GElf_Ehdr ;
typedef int Elf ;


 size_t EI_CLASS ;
 int ELFCLASSNONE ;
 int ELF_C_READ ;
 int * elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 int * gelf_getehdr (int *,TYPE_1__*) ;

__attribute__((used)) static int
getelfclass(int fd)
{
 GElf_Ehdr ehdr;
 Elf *e;
 int class;

 class = ELFCLASSNONE;

 if ((e = elf_begin(fd, ELF_C_READ, ((void*)0))) == ((void*)0))
  goto out;
 if (gelf_getehdr(e, &ehdr) == ((void*)0))
  goto out;
 class = ehdr.e_ident[EI_CLASS];
out:
 (void)elf_end(e);
 return (class);
}
