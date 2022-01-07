
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ps_err_e ;
typedef int lwpid_t ;
typedef int gdb_ps_prochandle_t ;
typedef int caddr_t ;


 int PIOCGXREG ;
 scalar_t__ PS_ERR ;
 scalar_t__ PS_OK ;
 int errno ;
 scalar_t__ get_lwp_fd (int ,int ,int*) ;
 scalar_t__ ioctl (int,int ,int ) ;
 int print_sys_errmsg (char*,int ) ;

ps_err_e
ps_lgetxregs (gdb_ps_prochandle_t ph, lwpid_t lwpid, caddr_t xregset)
{
  return PS_OK;
}
