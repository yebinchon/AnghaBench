
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {unsigned int r_pc; int * r; int r_cpsr; int r_lr; int r_sp; } ;
typedef int PTRACE_ARG3_TYPE ;


 unsigned int ADDR_BITS_REMOVE (unsigned int) ;




 int PIDGET (int ) ;
 int PT_GETREGS ;
 int PT_SETREGS ;
 int arm_apcs_32 ;
 int inferior_ptid ;
 int ptrace (int ,int ,int ,int ) ;
 int regcache_collect (int const,char*) ;
 int warning (char*,...) ;

__attribute__((used)) static void
store_register (int regno)
{
  struct reg inferior_registers;

  int ret;

  ret = ptrace (PT_GETREGS, PIDGET (inferior_ptid),
  (PTRACE_ARG3_TYPE) &inferior_registers, 0);

  if (ret < 0)
    {
      warning ("unable to fetch general registers");
      return;
    }


  switch (regno)
    {
    case 128:
      regcache_collect (128, (char *) &inferior_registers.r_sp);
      break;

    case 131:
      regcache_collect (131, (char *) &inferior_registers.r_lr);
      break;

    case 130:
      if (arm_apcs_32)
 regcache_collect (130, (char *) &inferior_registers.r_pc);
      else
 {
   unsigned pc_val;

   regcache_collect (130, (char *) &pc_val);

   pc_val = ADDR_BITS_REMOVE (pc_val);
   inferior_registers.r_pc
     ^= ADDR_BITS_REMOVE (inferior_registers.r_pc);
   inferior_registers.r_pc |= pc_val;
 }
      break;

    case 129:
      if (arm_apcs_32)
 regcache_collect (129, (char *) &inferior_registers.r_cpsr);
      else
 {
   unsigned psr_val;

   regcache_collect (129, (char *) &psr_val);

   psr_val ^= ADDR_BITS_REMOVE (psr_val);
   inferior_registers.r_pc = ADDR_BITS_REMOVE (inferior_registers.r_pc);
   inferior_registers.r_pc |= psr_val;
 }
      break;

    default:
      regcache_collect (regno, (char *) &inferior_registers.r[regno]);
      break;
    }


  ret = ptrace (PT_SETREGS, PIDGET (inferior_ptid),
  (PTRACE_ARG3_TYPE) &inferior_registers, 0);

  if (ret < 0)
    warning ("unable to write register %d to inferior", regno);

}
