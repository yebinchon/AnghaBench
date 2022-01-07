
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lwpid_t ;
typedef int gregset_t ;
typedef int fpregset_t ;
typedef char* caddr_t ;
struct TYPE_2__ {int (* to_store_registers ) (int) ;} ;


 int GET_LWP (int ) ;
 int IS_LWP (int ) ;
 int PT_GETFPREGS ;
 int PT_GETREGS ;
 int PT_GETXMMREGS ;
 int PT_SETFPREGS ;
 int PT_SETREGS ;
 int PT_SETXMMREGS ;
 TYPE_1__ child_ops ;
 int errno ;
 int error (char*,int ,char*) ;
 int fill_fpregset (int *,int) ;
 int fill_gregset (int *,int) ;
 int i387_fill_fxsave (char*,int) ;
 int inferior_ptid ;
 int ptrace (int ,int ,char*,int ) ;
 char* safe_strerror (int ) ;
 int stub1 (int) ;

__attribute__((used)) static void
fbsd_lwp_store_registers (int regno)
{
  gregset_t gregs;
  fpregset_t fpregs;
  lwpid_t lwp;





  if (!IS_LWP (inferior_ptid))
    {
      child_ops.to_store_registers (regno);
      return ;
    }

  lwp = GET_LWP (inferior_ptid);
  if (regno != -1)
    if (ptrace (PT_GETREGS, lwp, (caddr_t) &gregs, 0) == -1)
      error ("Cannot get lwp %d registers: %s\n", lwp, safe_strerror (errno));

  fill_gregset (&gregs, regno);
  if (ptrace (PT_SETREGS, lwp, (caddr_t) &gregs, 0) == -1)
      error ("Cannot set lwp %d registers: %s\n", lwp, safe_strerror (errno));
  if (regno != -1)
    if (ptrace (PT_GETFPREGS, lwp, (caddr_t) &fpregs, 0) == -1)
      error ("Cannot get lwp %d float registers: %s\n", lwp,
             safe_strerror (errno));

  fill_fpregset (&fpregs, regno);
  if (ptrace (PT_SETFPREGS, lwp, (caddr_t) &fpregs, 0) == -1)
     error ("Cannot set lwp %d float registers: %s\n", lwp,
            safe_strerror (errno));
}
