
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
typedef int gregset_t ;
typedef int fpregset_t ;
typedef int PTRACE_ARG3_TYPE ;


 int PIDGET (int ) ;
 int PTRACE_GETFPREGS ;
 int PTRACE_GETREGS ;
 int SPARC_G0_REGNUM ;
 int TIDGET (int ) ;
 struct regcache* current_regcache ;
 int inferior_ptid ;
 int perror_with_name (char*) ;
 int ptrace (int ,int,int ,int ) ;
 int regcache_raw_supply (struct regcache*,int,int *) ;
 scalar_t__ sparc_fpregset_supplies_p (int) ;
 int sparc_gregset ;
 scalar_t__ sparc_gregset_supplies_p (int) ;
 int sparc_supply_fpregset (struct regcache*,int,int *) ;
 int sparc_supply_gregset (int ,struct regcache*,int,int *) ;

void
fetch_inferior_registers (int regnum)
{
  struct regcache *regcache = current_regcache;
  int pid;
  pid = TIDGET (inferior_ptid);
  if (pid == 0)
    pid = PIDGET (inferior_ptid);

  if (regnum == SPARC_G0_REGNUM)
    {
      regcache_raw_supply (regcache, SPARC_G0_REGNUM, ((void*)0));
      return;
    }

  if (regnum == -1 || sparc_gregset_supplies_p (regnum))
    {
      gregset_t regs;

      if (ptrace (PTRACE_GETREGS, pid, (PTRACE_ARG3_TYPE) &regs, 0) == -1)
 perror_with_name ("Couldn't get registers");

      sparc_supply_gregset (sparc_gregset, regcache, -1, &regs);
      if (regnum != -1)
 return;
    }

  if (regnum == -1 || sparc_fpregset_supplies_p (regnum))
    {
      fpregset_t fpregs;

      if (ptrace (PTRACE_GETFPREGS, pid, (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
 perror_with_name ("Couldn't get floating point status");

      sparc_supply_fpregset (regcache, -1, &fpregs);
    }
}
