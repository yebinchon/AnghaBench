
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps_prochandle {int dummy; } ;
typedef int ps_err_e ;
typedef int lwpid_t ;


 int PS_ERR ;
 int PS_OK ;
 int PT_RESUME ;
 int ptrace (int ,int ,int ,int ) ;

ps_err_e
ps_lcontinue(struct ps_prochandle *ph, lwpid_t lwpid)
{
  if (ptrace (PT_RESUME, lwpid, 0, 0) == -1)
    return PS_ERR;
  return PS_OK;
}
