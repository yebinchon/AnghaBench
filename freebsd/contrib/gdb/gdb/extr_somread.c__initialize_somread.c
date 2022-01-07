
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_symtab_fns (int *) ;
 int som_sym_fns ;

void
_initialize_somread (void)
{
  add_symtab_fns (&som_sym_fns);
}
