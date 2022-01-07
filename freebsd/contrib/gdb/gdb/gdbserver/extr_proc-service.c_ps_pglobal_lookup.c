
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ps_err_e ;
typedef scalar_t__ paddr_t ;
typedef int gdb_ps_prochandle_t ;
typedef scalar_t__ CORE_ADDR ;


 int PS_NOSYM ;
 int PS_OK ;
 scalar_t__ look_up_one_symbol (char const*,scalar_t__*) ;

ps_err_e
ps_pglobal_lookup (gdb_ps_prochandle_t ph, const char *obj,
     const char *name, paddr_t *sym_addr)
{
  CORE_ADDR addr;

  if (look_up_one_symbol (name, &addr) == 0)
    return PS_NOSYM;

  *sym_addr = (paddr_t) (unsigned long) addr;
  return PS_OK;
}
