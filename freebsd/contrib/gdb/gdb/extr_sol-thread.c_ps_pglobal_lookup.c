
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimal_symbol {int dummy; } ;
typedef int ps_err_e ;
typedef int gdb_ps_prochandle_t ;
typedef int gdb_ps_addr_t ;


 int PS_NOSYM ;
 int PS_OK ;
 int SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 struct minimal_symbol* lookup_minimal_symbol (char const*,int *,int *) ;

ps_err_e
ps_pglobal_lookup (gdb_ps_prochandle_t ph, const char *ld_object_name,
     const char *ld_symbol_name, gdb_ps_addr_t * ld_symbol_addr)
{
  struct minimal_symbol *ms;

  ms = lookup_minimal_symbol (ld_symbol_name, ((void*)0), ((void*)0));

  if (!ms)
    return PS_NOSYM;

  *ld_symbol_addr = SYMBOL_VALUE_ADDRESS (ms);

  return PS_OK;
}
