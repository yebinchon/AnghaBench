
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ps_err_e ;
typedef int gdb_ps_prochandle_t ;


 int PS_OK ;

ps_err_e
ps_pcontinue (gdb_ps_prochandle_t ph)
{
  return PS_OK;
}
