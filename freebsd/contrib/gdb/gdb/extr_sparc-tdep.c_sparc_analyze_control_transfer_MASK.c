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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 int FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 unsigned long FUNC7 (scalar_t__) ; 

__attribute__((used)) static CORE_ADDR
FUNC8 (CORE_ADDR pc, CORE_ADDR *npc)
{
  unsigned long insn = FUNC7 (pc);
  int conditional_p = FUNC1 (insn) & 0x7;
  int branch_p = 0;
  long offset = 0;			/* Must be signed for sign-extend.  */

  if (FUNC4 (insn) == 0 && FUNC5 (insn) == 3 && (insn & 0x1000000) == 0)
    {
      /* Branch on Integer Register with Prediction (BPr).  */
      branch_p = 1;
      conditional_p = 1;
    }
  else if (FUNC4 (insn) == 0 && FUNC5 (insn) == 6)
    {
      /* Branch on Floating-Point Condition Codes (FBfcc).  */
      branch_p = 1;
      offset = 4 * FUNC3 (insn);
    }
  else if (FUNC4 (insn) == 0 && FUNC5 (insn) == 5)
    {
      /* Branch on Floating-Point Condition Codes with Prediction
         (FBPfcc).  */
      branch_p = 1;
      offset = 4 * FUNC2 (insn);
    }
  else if (FUNC4 (insn) == 0 && FUNC5 (insn) == 2)
    {
      /* Branch on Integer Condition Codes (Bicc).  */
      branch_p = 1;
      offset = 4 * FUNC3 (insn);
    }
  else if (FUNC4 (insn) == 0 && FUNC5 (insn) == 1)
    {
      /* Branch on Integer Condition Codes with Prediction (BPcc).  */
      branch_p = 1;
      offset = 4 * FUNC2 (insn);
    }

  /* FIXME: Handle DONE and RETRY instructions.  */

  /* FIXME: Handle the Trap instruction.  */

  if (branch_p)
    {
      if (conditional_p)
	{
	  /* For conditional branches, return nPC + 4 iff the annul
	     bit is 1.  */
	  return (FUNC0 (insn) ? *npc + 4 : 0);
	}
      else
	{
	  /* For unconditional branches, return the target if its
	     specified condition is "always" and return nPC + 4 if the
	     condition is "never".  If the annul bit is 1, set *NPC to
	     zero.  */
	  if (FUNC1 (insn) == 0x0)
	    pc = *npc, offset = 4;
	  if (FUNC0 (insn))
	    *npc = 0;

	  FUNC6 (offset != 0);
	  return pc + offset;
	}
    }

  return 0;
}