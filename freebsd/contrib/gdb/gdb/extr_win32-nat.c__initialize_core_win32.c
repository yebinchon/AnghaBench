
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_core_fns (int *) ;
 int win32_elf_core_fns ;

void
_initialize_core_win32 (void)
{
  add_core_fns (&win32_elf_core_fns);
}
