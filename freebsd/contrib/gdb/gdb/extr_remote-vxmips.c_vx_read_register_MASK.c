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
 int /*<<< orphan*/  PTRACE_GETFPREGS ; 
 int /*<<< orphan*/  PTRACE_GETREGS ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/ * deprecated_registers ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ target_has_fp ; 

void
FUNC7 (int regno)
{
  char mips_greg_packet[MIPS_GREG_PLEN];
  char mips_fpreg_packet[MIPS_FPREG_PLEN];

  /* Get general-purpose registers.  */

  FUNC6 (mips_greg_packet, MIPS_GREG_PLEN, PTRACE_GETREGS);

  /* this code copies the registers obtained by RPC 
     stored in a structure(s) like this :

     Register(s)                Offset(s)
     gp 0-31                    0x00
     hi                 0x80
     lo                 0x84
     sr                 0x88
     pc                 0x8c

     into a stucture like this:

     0x00       GP 0-31
     0x80       SR
     0x84       LO
     0x88       HI
     0x8C       BAD             --- Not available currently
     0x90       CAUSE           --- Not available currently
     0x94       PC
     0x98       FP 0-31
     0x118      FCSR
     0x11C      FIR             --- Not available currently
     0x120      FP              --- Not available currently

     structure is 0x124 (292) bytes in length */

  /* Copy the general registers.  */

  FUNC2 (&mips_greg_packet[MIPS_R_GP0], &deprecated_registers[0],
	 32 * MIPS_GREG_SIZE);

  /* Copy SR, LO, HI, and PC.  */

  FUNC2 (&mips_greg_packet[MIPS_R_SR],
	 &deprecated_registers[FUNC0 (PS_REGNUM)], MIPS_GREG_SIZE);
  FUNC2 (&mips_greg_packet[MIPS_R_LO],
	 &deprecated_registers[FUNC0 (FUNC5 (current_gdbarch)->lo)], MIPS_GREG_SIZE);
  FUNC2 (&mips_greg_packet[MIPS_R_HI],
	 &deprecated_registers[FUNC0 (FUNC5 (current_gdbarch)->hi)], MIPS_GREG_SIZE);
  FUNC2 (&mips_greg_packet[MIPS_R_PC],
	 &deprecated_registers[FUNC0 (FUNC5 (current_gdbarch)->pc)], MIPS_GREG_SIZE);

  /* If the target has floating point registers, fetch them.
     Otherwise, zero the floating point register values in
     registers[] for good measure, even though we might not
     need to.  */

  if (target_has_fp)
    {
      FUNC6 (mips_fpreg_packet, MIPS_FPREG_PLEN,
			  PTRACE_GETFPREGS);

      /* Copy the floating point registers.  */

      FUNC2 (&mips_fpreg_packet[MIPS_R_FP0],
	     &deprecated_registers[FUNC0 (FP0_REGNUM)],
	     FUNC1 (FP0_REGNUM) * 32);

      /* Copy the floating point control/status register (fpcsr).  */

      FUNC2 (&mips_fpreg_packet[MIPS_R_FPCSR],
	     &deprecated_registers[FUNC0 (FUNC5 (current_gdbarch)->fp_control_status)],
	     FUNC1 (FUNC5 (current_gdbarch)->fp_control_status));
    }
  else
    {
      FUNC4 (&deprecated_registers[FUNC0 (FP0_REGNUM)],
	      0, FUNC1 (FP0_REGNUM) * 32);
      FUNC4 (&deprecated_registers[FUNC0 (FUNC5 (current_gdbarch)->fp_control_status)],
	      0, FUNC1 (FUNC5 (current_gdbarch)->fp_control_status));
    }

  /* Mark the register cache valid.  */

  FUNC3 ();
}