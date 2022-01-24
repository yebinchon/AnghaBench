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
struct reg {int /*<<< orphan*/ * r; int /*<<< orphan*/  r_pc; int /*<<< orphan*/  r_cpsr; int /*<<< orphan*/  r_lr; int /*<<< orphan*/  r_sp; } ;
typedef  int /*<<< orphan*/  PTRACE_ARG3_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ARM_LR_REGNUM 131 
#define  ARM_PC_REGNUM 130 
#define  ARM_PS_REGNUM 129 
#define  ARM_SP_REGNUM 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_GETREGS ; 
 int /*<<< orphan*/  arm_apcs_32 ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int const,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5 (int regno)
{
  struct reg inferior_registers;
#ifndef CROSS_DEBUGGER
  int ret;

  ret = FUNC2 (PT_GETREGS, FUNC1 (inferior_ptid),
		(PTRACE_ARG3_TYPE) &inferior_registers, 0);

  if (ret < 0)
    {
      FUNC4 ("unable to fetch general register");
      return;
    }
#endif

  switch (regno)
    {
    case ARM_SP_REGNUM:
      FUNC3 (ARM_SP_REGNUM, (char *) &inferior_registers.r_sp);
      break;

    case ARM_LR_REGNUM:
      FUNC3 (ARM_LR_REGNUM, (char *) &inferior_registers.r_lr);
      break;

    case ARM_PC_REGNUM:
      /* This is ok: we're running native... */
      inferior_registers.r_pc = FUNC0 (inferior_registers.r_pc);
      FUNC3 (ARM_PC_REGNUM, (char *) &inferior_registers.r_pc);
      break;

    case ARM_PS_REGNUM:
      if (arm_apcs_32)
	FUNC3 (ARM_PS_REGNUM, (char *) &inferior_registers.r_cpsr);
      else
	FUNC3 (ARM_PS_REGNUM, (char *) &inferior_registers.r_pc);
      break;

    default:
      FUNC3 (regno, (char *) &inferior_registers.r[regno]);
      break;
    }
}