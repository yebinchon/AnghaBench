
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf_Ehdr ;


 int CONVERT_SWITCH (int *,int *,int ) ;
 int HEADER_FIELDS ;

__attribute__((used)) static int elf_header_convert(Elf_Ehdr *ehdr)
{
 CONVERT_SWITCH(ehdr, ehdr, HEADER_FIELDS);



 return (0);
}
