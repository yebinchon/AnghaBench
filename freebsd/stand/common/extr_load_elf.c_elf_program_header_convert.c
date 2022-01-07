
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf_Phdr ;
typedef int Elf_Ehdr ;


 int CONVERT_SWITCH (int const*,int *,int ) ;
 int PROGRAM_HEADER_FIELDS ;

__attribute__((used)) static int elf_program_header_convert(const Elf_Ehdr *ehdr, Elf_Phdr *phdr)
{
 CONVERT_SWITCH(ehdr, phdr, PROGRAM_HEADER_FIELDS);



 return (0);
}
