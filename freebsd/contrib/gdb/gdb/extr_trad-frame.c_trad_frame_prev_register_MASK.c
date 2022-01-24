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
struct trad_frame_saved_reg {scalar_t__ addr; int /*<<< orphan*/  realreg; } ;
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
typedef  enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct frame_info*,int /*<<< orphan*/ ,int*,int*,scalar_t__*,int*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch*,int) ; 
 struct gdbarch* FUNC3 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct frame_info*,scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int lval_memory ; 
 int not_lval ; 
 int /*<<< orphan*/  FUNC5 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (struct trad_frame_saved_reg*,int) ; 
 scalar_t__ FUNC8 (struct trad_frame_saved_reg*,int) ; 
 scalar_t__ FUNC9 (struct trad_frame_saved_reg*,int) ; 

void
FUNC10 (struct frame_info *next_frame,
			  struct trad_frame_saved_reg this_saved_regs[],
			  int regnum, int *optimizedp,
			  enum lval_type *lvalp, CORE_ADDR *addrp,
			  int *realregp, void *bufferp)
{
  struct gdbarch *gdbarch = FUNC3 (next_frame);
  if (FUNC7 (this_saved_regs, regnum))
    {
      /* The register was saved in memory.  */
      *optimizedp = 0;
      *lvalp = lval_memory;
      *addrp = this_saved_regs[regnum].addr;
      *realregp = -1;
      if (bufferp != NULL)
	{
	  /* Read the value in from memory.  */
	  FUNC4 (next_frame, this_saved_regs[regnum].addr, bufferp,
			    FUNC5 (gdbarch, regnum));
	}
    }
  else if (FUNC8 (this_saved_regs, regnum))
    {
      /* Ask the next frame to return the value of the register.  */
      FUNC1 (next_frame, this_saved_regs[regnum].realreg,
			     optimizedp, lvalp, addrp, realregp, bufferp);
    }
  else if (FUNC9 (this_saved_regs, regnum))
    {
      /* The register's value is available.  */
      *optimizedp = 0;
      *lvalp = not_lval;
      *addrp = 0;
      *realregp = -1;
      if (bufferp != NULL)
	FUNC6 (bufferp, FUNC5 (gdbarch, regnum),
				this_saved_regs[regnum].addr);
    }
  else
    {
      FUNC0 ("Register %s not available",
	     FUNC2 (gdbarch, regnum));
    }
}