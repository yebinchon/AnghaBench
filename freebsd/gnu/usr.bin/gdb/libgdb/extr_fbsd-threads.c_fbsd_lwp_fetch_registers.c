
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lwpid_t ;
typedef int gregset_t ;
typedef int fpregset_t ;
typedef char* caddr_t ;
struct TYPE_2__ {int (* to_fetch_registers ) (int) ;} ;


 int GET_PID (int ) ;
 int PT_GETFPREGS ;
 int PT_GETREGS ;
 int PT_GETXMMREGS ;
 int current_regcache ;
 int errno ;
 int error (char*,int ,char*) ;
 int i387_supply_fxsave (int ,int,char*) ;
 int inferior_ptid ;
 TYPE_1__ orig_core_ops ;
 int ptrace (int ,int ,char*,int ) ;
 char* safe_strerror (int ) ;
 int stub1 (int) ;
 int supply_fpregset (int *) ;
 int supply_gregset (int *) ;
 int target_has_execution ;

__attribute__((used)) static void
fbsd_lwp_fetch_registers (int regno)
{
  gregset_t gregs;
  fpregset_t fpregs;
  lwpid_t lwp;




  if (!target_has_execution)
    {
      orig_core_ops.to_fetch_registers (-1);
      return;
    }


  lwp = GET_PID (inferior_ptid);

  if (ptrace (PT_GETREGS, lwp, (caddr_t) &gregs, 0) == -1)
    error ("Cannot get lwp %d registers: %s\n", lwp, safe_strerror (errno));
  supply_gregset (&gregs);
      if (ptrace (PT_GETFPREGS, lwp, (caddr_t) &fpregs, 0) == -1)
 error ("Cannot get lwp %d registers: %s\n ", lwp, safe_strerror (errno));
      supply_fpregset (&fpregs);



}
