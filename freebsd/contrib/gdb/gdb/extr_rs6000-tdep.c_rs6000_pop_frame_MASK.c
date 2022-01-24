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
struct rs6000_framedata {scalar_t__ lr_offset; int saved_gpr; scalar_t__ gpr_offset; int saved_fpr; scalar_t__ fpr_offset; scalar_t__ frameless; } ;
struct frame_info {int dummy; } ;
struct TYPE_2__ {int wordsize; int /*<<< orphan*/  ppc_lr_regnum; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  DEPRECATED_REGISTER_BYTES ; 
 int FP0_REGNUM ; 
 int /*<<< orphan*/  PC_REGNUM ; 
 int /*<<< orphan*/  SP_REGNUM ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * deprecated_registers ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct frame_info* FUNC6 () ; 
 scalar_t__ FUNC7 (struct frame_info*) ; 
 scalar_t__ FUNC8 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (scalar_t__,int) ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,struct rs6000_framedata*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC17 (void)
{
  CORE_ADDR pc, lr, sp, prev_sp, addr;	/* %pc, %lr, %sp */
  struct rs6000_framedata fdata;
  struct frame_info *frame = FUNC6 ();
  int ii, wordsize;

  pc = FUNC12 ();
  sp = FUNC7 (frame);

  if (FUNC0 (FUNC9 (frame),
				   FUNC7 (frame),
				   FUNC7 (frame)))
    {
      FUNC5 ();
      FUNC3 ();
      return;
    }

  /* Make sure that all registers are valid.  */
  FUNC2 (0, NULL, DEPRECATED_REGISTER_BYTES);

  /* Figure out previous %pc value.  If the function is frameless, it is 
     still in the link register, otherwise walk the frames and retrieve the
     saved %pc value in the previous frame.  */

  addr = FUNC8 (frame);
  (void) FUNC14 (addr, FUNC9 (frame), &fdata);

  wordsize = FUNC4 (current_gdbarch)->wordsize;
  if (fdata.frameless)
    prev_sp = sp;
  else
    prev_sp = FUNC11 (sp, wordsize);
  if (fdata.lr_offset == 0)
     lr = FUNC13 (FUNC4 (current_gdbarch)->ppc_lr_regnum);
  else
    lr = FUNC11 (prev_sp + fdata.lr_offset, wordsize);

  /* reset %pc value. */
  FUNC16 (PC_REGNUM, lr);

  /* reset register values if any was saved earlier.  */

  if (fdata.saved_gpr != -1)
    {
      addr = prev_sp + fdata.gpr_offset;
      for (ii = fdata.saved_gpr; ii <= 31; ++ii)
	{
	  FUNC10 (addr, &deprecated_registers[FUNC1 (ii)],
		       wordsize);
	  addr += wordsize;
	}
    }

  if (fdata.saved_fpr != -1)
    {
      addr = prev_sp + fdata.fpr_offset;
      for (ii = fdata.saved_fpr; ii <= 31; ++ii)
	{
	  FUNC10 (addr, &deprecated_registers[FUNC1 (ii + FP0_REGNUM)], 8);
	  addr += 8;
	}
    }

  FUNC16 (SP_REGNUM, prev_sp);
  FUNC15 (-1);
  FUNC3 ();
}