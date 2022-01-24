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
struct frame_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ppc_lr_regnum; int /*<<< orphan*/  ppc_ctr_regnum; int /*<<< orphan*/  wordsize; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ SIG_FRAME_PC_OFFSET ; 
 scalar_t__ TEXT_SEGMENT_BASE ; 
 int /*<<< orphan*/  current_gdbarch ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 struct frame_info* FUNC1 () ; 
 scalar_t__ FUNC2 (struct frame_info*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static CORE_ADDR
FUNC5 (int opcode, int instr, CORE_ADDR pc, CORE_ADDR safety)
{
  CORE_ADDR dest;
  int immediate;
  int absolute;
  int ext_op;

  absolute = (int) ((instr >> 1) & 1);

  switch (opcode)
    {
    case 18:
      immediate = ((instr & ~3) << 6) >> 6;	/* br unconditional */
      if (absolute)
	dest = immediate;
      else
	dest = pc + immediate;
      break;

    case 16:
      immediate = ((instr & ~3) << 16) >> 16;	/* br conditional */
      if (absolute)
	dest = immediate;
      else
	dest = pc + immediate;
      break;

    case 19:
      ext_op = (instr >> 1) & 0x3ff;

      if (ext_op == 16)		/* br conditional register */
	{
          dest = FUNC4 (FUNC0 (current_gdbarch)->ppc_lr_regnum) & ~3;

	  /* If we are about to return from a signal handler, dest is
	     something like 0x3c90.  The current frame is a signal handler
	     caller frame, upon completion of the sigreturn system call
	     execution will return to the saved PC in the frame.  */
	  if (dest < TEXT_SEGMENT_BASE)
	    {
	      struct frame_info *fi;

	      fi = FUNC1 ();
	      if (fi != NULL)
		dest = FUNC3 (FUNC2 (fi) + SIG_FRAME_PC_OFFSET,
					 FUNC0 (current_gdbarch)->wordsize);
	    }
	}

      else if (ext_op == 528)	/* br cond to count reg */
	{
          dest = FUNC4 (FUNC0 (current_gdbarch)->ppc_ctr_regnum) & ~3;

	  /* If we are about to execute a system call, dest is something
	     like 0x22fc or 0x3b00.  Upon completion the system call
	     will return to the address in the link register.  */
	  if (dest < TEXT_SEGMENT_BASE)
            dest = FUNC4 (FUNC0 (current_gdbarch)->ppc_lr_regnum) & ~3;
	}
      else
	return -1;
      break;

    default:
      return -1;
    }
  return (dest < TEXT_SEGMENT_BASE) ? safety : dest;
}