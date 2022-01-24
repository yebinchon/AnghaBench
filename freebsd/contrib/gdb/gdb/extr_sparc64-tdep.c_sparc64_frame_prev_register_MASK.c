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
struct sparc_frame_cache {int base; scalar_t__ frameless_p; } ;
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
typedef  enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int BIAS ; 
 int SPARC64_NPC_REGNUM ; 
 int SPARC64_PC_REGNUM ; 
 int SPARC_I0_REGNUM ; 
 int SPARC_I7_REGNUM ; 
 int SPARC_L0_REGNUM ; 
 int SPARC_O0_REGNUM ; 
 int SPARC_O7_REGNUM ; 
 int /*<<< orphan*/  FUNC0 (struct frame_info*,int,int*,int*,int*,int*,void*) ; 
 scalar_t__ FUNC1 (struct frame_info*,int) ; 
 struct gdbarch* FUNC2 (struct frame_info*) ; 
 int lval_memory ; 
 int not_lval ; 
 int /*<<< orphan*/  FUNC3 (int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gdbarch*,int) ; 
 struct sparc_frame_cache* FUNC5 (struct frame_info*,void**) ; 
 int /*<<< orphan*/  FUNC6 (void*,int,int) ; 

__attribute__((used)) static void
FUNC7 (struct frame_info *next_frame, void **this_cache,
			     int regnum, int *optimizedp,
			     enum lval_type *lvalp, CORE_ADDR *addrp,
			     int *realnump, void *valuep)
{
  struct sparc_frame_cache *cache =
    FUNC5 (next_frame, this_cache);

  if (regnum == SPARC64_PC_REGNUM || regnum == SPARC64_NPC_REGNUM)
    {
      *optimizedp = 0;
      *lvalp = not_lval;
      *addrp = 0;
      *realnump = -1;
      if (valuep)
	{
	  CORE_ADDR pc = (regnum == SPARC64_NPC_REGNUM) ? 4 : 0;

	  regnum = cache->frameless_p ? SPARC_O7_REGNUM : SPARC_I7_REGNUM;
	  pc += FUNC1 (next_frame, regnum) + 8;
	  FUNC6 (valuep, 8, pc);
	}
      return;
    }

  /* The previous frame's `local' and `in' registers have been saved
     in the register save area.  */
  if (!cache->frameless_p
      && regnum >= SPARC_L0_REGNUM && regnum <= SPARC_I7_REGNUM)
    {
      *optimizedp = 0;
      *lvalp = lval_memory;
      *addrp = cache->base + BIAS + (regnum - SPARC_L0_REGNUM) * 8;
      *realnump = -1;
      if (valuep)
	{
	  struct gdbarch *gdbarch = FUNC2 (next_frame);

	  /* Read the value in from memory.  */
	  FUNC3 (*addrp, valuep, FUNC4 (gdbarch, regnum));
	}
      return;
    }

  /* The previous frame's `out' registers are accessable as the
     current frame's `in' registers.  */
  if (!cache->frameless_p
      && regnum >= SPARC_O0_REGNUM && regnum <= SPARC_O7_REGNUM)
    regnum += (SPARC_I0_REGNUM - SPARC_O0_REGNUM);

  FUNC0 (next_frame, regnum,
			 optimizedp, lvalp, addrp, realnump, valuep);
}