#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct reg {unsigned int r_pc; int /*<<< orphan*/  r_cpsr; int /*<<< orphan*/  r_lr; int /*<<< orphan*/  r_sp; int /*<<< orphan*/ * r; } ;
typedef  int /*<<< orphan*/  PTRACE_ARG3_TYPE ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int ARM_A1_REGNUM ; 
 int ARM_LR_REGNUM ; 
 int ARM_PC_REGNUM ; 
 int ARM_PS_REGNUM ; 
 int ARM_SP_REGNUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_SETREGS ; 
 scalar_t__ arm_apcs_32 ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5 (void)
{
  struct reg inferior_registers;
  int ret;
  int regno;


  for (regno = ARM_A1_REGNUM; regno < ARM_SP_REGNUM; regno++)
    FUNC3 (regno, (char *) &inferior_registers.r[regno]);

  FUNC3 (ARM_SP_REGNUM, (char *) &inferior_registers.r_sp);
  FUNC3 (ARM_LR_REGNUM, (char *) &inferior_registers.r_lr);

  if (arm_apcs_32)
    {
      FUNC3 (ARM_PC_REGNUM, (char *) &inferior_registers.r_pc);
      FUNC3 (ARM_PS_REGNUM, (char *) &inferior_registers.r_cpsr);
    }
  else
    {
      unsigned pc_val;
      unsigned psr_val;

      FUNC3 (ARM_PC_REGNUM, (char *) &pc_val);
      FUNC3 (ARM_PS_REGNUM, (char *) &psr_val);
	  
      pc_val = FUNC0 (pc_val);
      psr_val ^= FUNC0 (psr_val);

      inferior_registers.r_pc = pc_val | psr_val;
    }

#ifndef CROSS_DEBUGGER
  ret = FUNC2 (PT_SETREGS, FUNC1 (inferior_ptid),
		(PTRACE_ARG3_TYPE) &inferior_registers, 0);

  if (ret < 0)
    FUNC4 ("unable to store general registers");
#endif
}