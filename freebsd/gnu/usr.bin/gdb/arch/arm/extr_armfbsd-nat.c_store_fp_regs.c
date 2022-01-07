
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpreg {int fpr_fpsr; int * fpr; } ;
typedef int PTRACE_ARG3_TYPE ;


 int ARM_F0_REGNUM ;
 int ARM_F7_REGNUM ;
 int ARM_FPS_REGNUM ;
 int PIDGET (int ) ;
 int PT_SETFPREGS ;
 int inferior_ptid ;
 int ptrace (int ,int ,int ,int ) ;
 int regcache_collect (int,char*) ;
 int warning (char*) ;

__attribute__((used)) static void
store_fp_regs (void)
{
  struct fpreg inferior_fp_registers;
  int ret;
  int regno;


  for (regno = ARM_F0_REGNUM; regno <= ARM_F7_REGNUM; regno++)
    regcache_collect
      (regno, (char *) &inferior_fp_registers.fpr[regno - ARM_F0_REGNUM]);

  regcache_collect (ARM_FPS_REGNUM, (char *) &inferior_fp_registers.fpr_fpsr);


  ret = ptrace (PT_SETFPREGS, PIDGET (inferior_ptid),
  (PTRACE_ARG3_TYPE) &inferior_fp_registers, 0);

  if (ret < 0)
    warning ("unable to store floating-point registers");

}
