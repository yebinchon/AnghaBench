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
struct minimal_symbol {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wordsize; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct minimal_symbol*) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 struct minimal_symbol* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (scalar_t__,int) ; 
 unsigned int FUNC6 (int) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

CORE_ADDR
FUNC8 (CORE_ADDR pc)
{
  unsigned int ii, op;
  int rel;
  CORE_ADDR solib_target_pc;
  struct minimal_symbol *msymbol;

  static unsigned trampoline_code[] =
  {
    0x800b0000,			/*     l   r0,0x0(r11)  */
    0x90410014,			/*    st   r2,0x14(r1)  */
    0x7c0903a6,			/* mtctr   r0           */
    0x804b0004,			/*     l   r2,0x4(r11)  */
    0x816b0008,			/*     l  r11,0x8(r11)  */
    0x4e800420,			/*  bctr                */
    0x4e800020,			/*    br                */
    0
  };

  /* Check for bigtoc fixup code.  */
  msymbol = FUNC3 (pc);
  if (msymbol && FUNC7 (pc, FUNC0 (msymbol)))
    {
      /* Double-check that the third instruction from PC is relative "b".  */
      op = FUNC5 (pc + 8, 4);
      if ((op & 0xfc000003) == 0x48000000)
	{
	  /* Extract bits 6-29 as a signed 24-bit relative word address and
	     add it to the containing PC.  */
	  rel = ((int)(op << 6) >> 6);
	  return pc + 8 + rel;
	}
    }

  /* If pc is in a shared library trampoline, return its target.  */
  solib_target_pc = FUNC1 (pc);
  if (solib_target_pc)
    return solib_target_pc;

  for (ii = 0; trampoline_code[ii]; ++ii)
    {
      op = FUNC5 (pc + (ii * 4), 4);
      if (op != trampoline_code[ii])
	return 0;
    }
  ii = FUNC6 (11);	/* r11 holds destination addr   */
  pc = FUNC4 (ii, FUNC2 (current_gdbarch)->wordsize); /* (r11) value */
  return pc;
}