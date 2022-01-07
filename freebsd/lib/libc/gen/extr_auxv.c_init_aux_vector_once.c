
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf_Auxinfo ;
typedef int Elf_Addr ;


 int * __elf_aux_vector ;
 scalar_t__ environ ;

__attribute__((used)) static void
init_aux_vector_once(void)
{
 Elf_Addr *sp;

 sp = (Elf_Addr *)environ;
 while (*sp++ != 0)
  ;
 __elf_aux_vector = (Elf_Auxinfo *)sp;
}
