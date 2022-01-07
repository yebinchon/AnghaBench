
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 scalar_t__ X_A (unsigned long) ;
 int X_COND (unsigned long) ;
 int X_DISP19 (unsigned long) ;
 int X_DISP22 (unsigned long) ;
 scalar_t__ X_OP (unsigned long) ;
 int X_OP2 (unsigned long) ;
 int gdb_assert (int) ;
 unsigned long sparc_fetch_instruction (scalar_t__) ;

__attribute__((used)) static CORE_ADDR
sparc_analyze_control_transfer (CORE_ADDR pc, CORE_ADDR *npc)
{
  unsigned long insn = sparc_fetch_instruction (pc);
  int conditional_p = X_COND (insn) & 0x7;
  int branch_p = 0;
  long offset = 0;

  if (X_OP (insn) == 0 && X_OP2 (insn) == 3 && (insn & 0x1000000) == 0)
    {

      branch_p = 1;
      conditional_p = 1;
    }
  else if (X_OP (insn) == 0 && X_OP2 (insn) == 6)
    {

      branch_p = 1;
      offset = 4 * X_DISP22 (insn);
    }
  else if (X_OP (insn) == 0 && X_OP2 (insn) == 5)
    {


      branch_p = 1;
      offset = 4 * X_DISP19 (insn);
    }
  else if (X_OP (insn) == 0 && X_OP2 (insn) == 2)
    {

      branch_p = 1;
      offset = 4 * X_DISP22 (insn);
    }
  else if (X_OP (insn) == 0 && X_OP2 (insn) == 1)
    {

      branch_p = 1;
      offset = 4 * X_DISP19 (insn);
    }





  if (branch_p)
    {
      if (conditional_p)
 {


   return (X_A (insn) ? *npc + 4 : 0);
 }
      else
 {




   if (X_COND (insn) == 0x0)
     pc = *npc, offset = 4;
   if (X_A (insn))
     *npc = 0;

   gdb_assert (offset != 0);
   return pc + offset;
 }
    }

  return 0;
}
