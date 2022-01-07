
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf_Shdr ;
typedef int Elf_Ehdr ;


 int CONVERT_SWITCH (int const*,int *,int ) ;
 int SECTION_HEADER_FIELDS ;

__attribute__((used)) static int elf_section_header_convert(const Elf_Ehdr *ehdr, Elf_Shdr *shdr)
{
 CONVERT_SWITCH(ehdr, shdr, SECTION_HEADER_FIELDS);



 return (0);
}
