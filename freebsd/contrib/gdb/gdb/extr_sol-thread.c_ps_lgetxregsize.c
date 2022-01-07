
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ps_err_e ;
typedef int lwpid_t ;
typedef int gdb_ps_prochandle_t ;


 scalar_t__ EINVAL ;
 int PIOCGXREGSIZE ;
 scalar_t__ PS_ERR ;
 scalar_t__ PS_NOFREGS ;
 scalar_t__ PS_OK ;
 scalar_t__ errno ;
 scalar_t__ get_lwp_fd (int ,int ,int*) ;
 scalar_t__ ioctl (int,int ,int*) ;
 int print_sys_errmsg (char*,scalar_t__) ;

ps_err_e
ps_lgetxregsize (gdb_ps_prochandle_t ph, lwpid_t lwpid, int *xregsize)
{
  return PS_OK;
}
