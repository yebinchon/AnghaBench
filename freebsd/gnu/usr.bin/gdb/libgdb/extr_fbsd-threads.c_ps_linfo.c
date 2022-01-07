
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptrace_lwpinfo {int dummy; } ;
struct ps_prochandle {int dummy; } ;
typedef int ps_err_e ;
typedef int lwpid_t ;


 int PS_ERR ;
 int PS_OK ;
 int PT_LWPINFO ;
 scalar_t__ fbsd_thread_core ;
 int memset (void*,int ,int) ;
 int ptrace (int ,int ,void*,int) ;

ps_err_e
ps_linfo(struct ps_prochandle *ph, lwpid_t lwpid, void *info)
{
  if (fbsd_thread_core) {

    memset(info, 0, sizeof(struct ptrace_lwpinfo));
    return PS_OK;
  }

  if (ptrace (PT_LWPINFO, lwpid, info, sizeof(struct ptrace_lwpinfo)) == -1)
    return PS_ERR;
  return PS_OK;
}
