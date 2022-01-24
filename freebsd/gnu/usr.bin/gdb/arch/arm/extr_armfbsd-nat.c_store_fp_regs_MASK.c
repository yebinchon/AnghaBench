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
struct fpreg {int /*<<< orphan*/  fpr_fpsr; int /*<<< orphan*/ * fpr; } ;
typedef  int /*<<< orphan*/  PTRACE_ARG3_TYPE ;

/* Variables and functions */
 int ARM_F0_REGNUM ; 
 int ARM_F7_REGNUM ; 
 int ARM_FPS_REGNUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_SETFPREGS ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  struct fpreg inferior_fp_registers;
  int ret;
  int regno;


  for (regno = ARM_F0_REGNUM; regno <= ARM_F7_REGNUM; regno++)
    FUNC2
      (regno, (char *) &inferior_fp_registers.fpr[regno - ARM_F0_REGNUM]);

  FUNC2 (ARM_FPS_REGNUM, (char *) &inferior_fp_registers.fpr_fpsr);

#ifndef CROSS_DEBUGGER
  ret = FUNC1 (PT_SETFPREGS, FUNC0 (inferior_ptid),
		(PTRACE_ARG3_TYPE) &inferior_fp_registers, 0);

  if (ret < 0)
    FUNC3 ("unable to store floating-point registers");
#endif
}