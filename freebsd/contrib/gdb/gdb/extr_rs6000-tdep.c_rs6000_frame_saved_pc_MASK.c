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
struct rs6000_framedata {scalar_t__ lr_offset; } ;
struct gdbarch_tdep {int wordsize; scalar_t__ lr_frame_offset; int /*<<< orphan*/  ppc_lr_regnum; } ;
struct frame_info {int dummy; } ;
typedef  int /*<<< orphan*/  ULONGEST ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct frame_info*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  PC_REGNUM ; 
 scalar_t__ SIGTRAMP_FRAME ; 
 scalar_t__ SIG_FRAME_LR_OFFSET ; 
 scalar_t__ SIG_FRAME_PC_OFFSET ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct frame_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct gdbarch_tdep* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct frame_info*) ; 
 scalar_t__ FUNC8 (struct frame_info*) ; 
 struct frame_info* FUNC9 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rs6000_framedata*) ; 

CORE_ADDR
FUNC13 (struct frame_info *fi)
{
  CORE_ADDR func_start;
  struct rs6000_framedata fdata;
  struct gdbarch_tdep *tdep = FUNC4 (current_gdbarch);
  int wordsize = tdep->wordsize;

  if ((FUNC8 (fi) == SIGTRAMP_FRAME))
    return FUNC10 (FUNC5 (fi) + SIG_FRAME_PC_OFFSET,
			     wordsize);

  if (FUNC1 (FUNC7 (fi),
				   FUNC5 (fi),
				   FUNC5 (fi)))
    return FUNC2 (FUNC7 (fi),
					   FUNC5 (fi), PC_REGNUM);

  func_start = FUNC6 (fi);

  /* If we failed to find the start of the function, it is a mistake
     to inspect the instructions.  */
  if (!func_start)
    return 0;

  (void) FUNC12 (func_start, FUNC7 (fi), &fdata);

  if (fdata.lr_offset == 0 && FUNC9 (fi) != NULL)
    {
      if ((FUNC8 (FUNC9 (fi)) == SIGTRAMP_FRAME))
	return FUNC10 ((FUNC5 (FUNC9 (fi))
				  + SIG_FRAME_LR_OFFSET),
				 wordsize);
      else if (FUNC1 (FUNC7 (FUNC9 (fi)), 0, 0))
	/* The link register wasn't saved by this frame and the next
           (inner, newer) frame is a dummy.  Get the link register
           value by unwinding it from that [dummy] frame.  */
	{
	  ULONGEST lr;
	  FUNC3 (FUNC9 (fi),
					  tdep->ppc_lr_regnum, &lr);
	  return lr;
	}
      else
	return FUNC10 (FUNC0 (fi)
				 + tdep->lr_frame_offset,
				 wordsize);
    }

  if (fdata.lr_offset == 0)
    return FUNC11 (FUNC4 (current_gdbarch)->ppc_lr_regnum);

  return FUNC10 (FUNC0 (fi) + fdata.lr_offset,
			   wordsize);
}