
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
typedef int gregset_t ;
typedef int fpregset_t ;
typedef int fpregs ;
typedef int ULONGEST ;
typedef int PTRACE_ARG3_TYPE ;


 int PIDGET (int ) ;
 int PTRACE_GETFPREGS ;
 int PTRACE_GETREGS ;
 int PTRACE_SETFPREGS ;
 int PTRACE_SETREGS ;
 int SPARC_I7_REGNUM ;
 int SPARC_L0_REGNUM ;
 int SPARC_SP_REGNUM ;
 int TIDGET (int ) ;
 struct regcache* current_regcache ;
 int inferior_ptid ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 int perror_with_name (char*) ;
 int ptrace (int ,int,int ,int ) ;
 int regcache_cooked_read_unsigned (struct regcache*,int,int *) ;
 int sparc_collect_fpregset (struct regcache*,int,int *) ;
 int sparc_collect_gregset (int ,struct regcache*,int,int *) ;
 int sparc_collect_rwindow (struct regcache*,int ,int) ;
 scalar_t__ sparc_fpregset_supplies_p (int) ;
 int sparc_gregset ;
 scalar_t__ sparc_gregset_supplies_p (int) ;

void
store_inferior_registers (int regnum)
{
  struct regcache *regcache = current_regcache;
  int pid;



  pid = TIDGET (inferior_ptid);
  if (pid == 0)
    pid = PIDGET (inferior_ptid);

  if (regnum == -1 || sparc_gregset_supplies_p (regnum))
    {
      gregset_t regs;

      if (ptrace (PTRACE_GETREGS, pid, (PTRACE_ARG3_TYPE) &regs, 0) == -1)
 perror_with_name ("Couldn't get registers");

      sparc_collect_gregset (sparc_gregset, regcache, regnum, &regs);

      if (ptrace (PTRACE_SETREGS, pid, (PTRACE_ARG3_TYPE) &regs, 0) == -1)
 perror_with_name ("Couldn't write registers");


      if (regnum == -1 || regnum == SPARC_SP_REGNUM
   || (regnum >= SPARC_L0_REGNUM && regnum <= SPARC_I7_REGNUM))
 {
   ULONGEST sp;

   regcache_cooked_read_unsigned (regcache, SPARC_SP_REGNUM, &sp);
   sparc_collect_rwindow (regcache, sp, regnum);
 }

      if (regnum != -1)
 return;
    }

  if (regnum == -1 || sparc_fpregset_supplies_p (regnum))
    {
      fpregset_t fpregs, saved_fpregs;

      if (ptrace (PTRACE_GETFPREGS, pid, (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
 perror_with_name ("Couldn't get floating-point registers");

      memcpy (&saved_fpregs, &fpregs, sizeof (fpregs));
      sparc_collect_fpregset (regcache, regnum, &fpregs);





      if (memcmp (&saved_fpregs, &fpregs, sizeof (fpregs)) != 0)
 {
   if (ptrace (PTRACE_SETFPREGS, pid,
        (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
     perror_with_name ("Couldn't write floating-point registers");
 }

      if (regnum != -1)
 return;
    }
}
