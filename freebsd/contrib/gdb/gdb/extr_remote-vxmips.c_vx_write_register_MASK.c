#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fp_control_status; int /*<<< orphan*/  pc; int /*<<< orphan*/  hi; int /*<<< orphan*/  lo; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FP0_REGNUM ; 
 int MIPS_FPREG_PLEN ; 
 int MIPS_GREG_PLEN ; 
 int MIPS_GREG_SIZE ; 
 size_t MIPS_R_FP0 ; 
 size_t MIPS_R_FPCSR ; 
 size_t MIPS_R_GP0 ; 
 size_t MIPS_R_HI ; 
 size_t MIPS_R_LO ; 
 size_t MIPS_R_PC ; 
 size_t MIPS_R_SR ; 
 int /*<<< orphan*/  PS_REGNUM ; 
 int /*<<< orphan*/  PTRACE_SETFPREGS ; 
 int /*<<< orphan*/  PTRACE_SETREGS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/ * deprecated_registers ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ target_has_fp ; 

FUNC5 (int regno)
{
  char mips_greg_packet[MIPS_GREG_PLEN];
  char mips_fpreg_packet[MIPS_FPREG_PLEN];

  /* Store general registers.  */

  FUNC2 (&deprecated_registers[0], &mips_greg_packet[MIPS_R_GP0],
	 32 * MIPS_GREG_SIZE);

  /* Copy SR, LO, HI, and PC.  */

  FUNC2 (&deprecated_registers[FUNC0 (PS_REGNUM)],
	 &mips_greg_packet[MIPS_R_SR], MIPS_GREG_SIZE);
  FUNC2 (&deprecated_registers[FUNC0 (FUNC3 (current_gdbarch)->lo)],
	 &mips_greg_packet[MIPS_R_LO], MIPS_GREG_SIZE);
  FUNC2 (&deprecated_registers[FUNC0 (FUNC3 (current_gdbarch)->hi)],
	 &mips_greg_packet[MIPS_R_HI], MIPS_GREG_SIZE);
  FUNC2 (&deprecated_registers[FUNC0 (FUNC3 (current_gdbarch)->pc)],
	 &mips_greg_packet[MIPS_R_PC], MIPS_GREG_SIZE);

  FUNC4 (mips_greg_packet, MIPS_GREG_PLEN, PTRACE_SETREGS);

  /* Store floating point registers if the target has them.  */

  if (target_has_fp)
    {
      /* Copy the floating point data registers.  */

      FUNC2 (&deprecated_registers[FUNC0 (FP0_REGNUM)],
	     &mips_fpreg_packet[MIPS_R_FP0],
	     FUNC1 (FP0_REGNUM) * 32);

      /* Copy the floating point control/status register (fpcsr).  */

      FUNC2 (&deprecated_registers[FUNC0 (FUNC3 (current_gdbarch)->fp_control_status)],
	     &mips_fpreg_packet[MIPS_R_FPCSR],
	     FUNC1 (FUNC3 (current_gdbarch)->fp_control_status));

      FUNC4 (mips_fpreg_packet, MIPS_FPREG_PLEN,
			   PTRACE_SETFPREGS);
    }
}