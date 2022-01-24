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
struct fpreg {int /*<<< orphan*/ * fpr; int /*<<< orphan*/  fpr_fpsr; } ;
typedef  int /*<<< orphan*/  PTRACE_ARG3_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_F0_REGNUM ; 
#define  ARM_FPS_REGNUM 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_GETFPREGS ; 
 int /*<<< orphan*/  PT_SETFPREGS ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int const,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4 (int regno)
{
  struct fpreg inferior_fp_registers;
#ifndef CROSS_DEBUGGER
  int ret;

  ret = FUNC1 (PT_GETFPREGS, FUNC0 (inferior_ptid),
		(PTRACE_ARG3_TYPE) &inferior_fp_registers, 0);

  if (ret < 0)
    {
      FUNC3 ("unable to fetch floating-point registers");
      return;
    }
#endif

  switch (regno)
    {
    case ARM_FPS_REGNUM:
      FUNC2 (ARM_FPS_REGNUM,
			(char *) &inferior_fp_registers.fpr_fpsr);
      break;

    default:
      FUNC2
	(regno, (char *) &inferior_fp_registers.fpr[regno - ARM_F0_REGNUM]);
      break;
    }

#ifndef CROSS_DEBUGGER
  ret = FUNC1 (PT_SETFPREGS, FUNC0 (inferior_ptid),
		(PTRACE_ARG3_TYPE) &inferior_fp_registers, 0);

  if (ret < 0)
    FUNC3 ("unable to write register %d to inferior", regno);
#endif
}