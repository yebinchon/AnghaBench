
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpreg {int * fpr; int fpr_fpsr; } ;
typedef int PTRACE_ARG3_TYPE ;


 int ARM_F0_REGNUM ;

 int PIDGET (int ) ;
 int PT_GETFPREGS ;
 int PT_SETFPREGS ;
 int inferior_ptid ;
 int ptrace (int ,int ,int ,int ) ;
 int regcache_collect (int const,char*) ;
 int warning (char*,...) ;

__attribute__((used)) static void
store_fp_register (int regno)
{
  struct fpreg inferior_fp_registers;

  int ret;

  ret = ptrace (PT_GETFPREGS, PIDGET (inferior_ptid),
  (PTRACE_ARG3_TYPE) &inferior_fp_registers, 0);

  if (ret < 0)
    {
      warning ("unable to fetch floating-point registers");
      return;
    }


  switch (regno)
    {
    case 128:
      regcache_collect (128,
   (char *) &inferior_fp_registers.fpr_fpsr);
      break;

    default:
      regcache_collect
 (regno, (char *) &inferior_fp_registers.fpr[regno - ARM_F0_REGNUM]);
      break;
    }


  ret = ptrace (PT_SETFPREGS, PIDGET (inferior_ptid),
  (PTRACE_ARG3_TYPE) &inferior_fp_registers, 0);

  if (ret < 0)
    warning ("unable to write register %d to inferior", regno);

}
