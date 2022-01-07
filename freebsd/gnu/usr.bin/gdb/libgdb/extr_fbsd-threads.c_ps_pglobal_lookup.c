
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps_prochandle {int dummy; } ;
struct minimal_symbol {int dummy; } ;
typedef int psaddr_t ;
typedef int ps_err_e ;
typedef int CORE_ADDR ;


 int PS_NOSYM ;
 int PS_OK ;
 int SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 int builtin_type_void_data_ptr ;
 struct minimal_symbol* lookup_minimal_symbol (char const*,int *,int *) ;
 int store_typed_address (int *,int ,int ) ;

ps_err_e
ps_pglobal_lookup (struct ps_prochandle *ph, const char *obj,
   const char *name, psaddr_t *sym_addr)
{
  struct minimal_symbol *ms;
  CORE_ADDR addr;

  ms = lookup_minimal_symbol (name, ((void*)0), ((void*)0));
  if (ms == ((void*)0))
    return PS_NOSYM;

  addr = SYMBOL_VALUE_ADDRESS (ms);
  store_typed_address(sym_addr, builtin_type_void_data_ptr, addr);
  return PS_OK;
}
