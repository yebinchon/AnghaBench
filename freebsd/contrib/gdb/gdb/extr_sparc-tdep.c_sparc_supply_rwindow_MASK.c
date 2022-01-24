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
struct regcache {int dummy; } ;
typedef  int ULONGEST ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 scalar_t__ BIAS ; 
 int SPARC_I7_REGNUM ; 
 int SPARC_L0_REGNUM ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct regcache*,int,char*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 

void
FUNC7 (struct regcache *regcache, CORE_ADDR sp, int regnum)
{
  int offset = 0;
  char buf[8];
  int i;

  if (sp & 1)
    {
      /* Registers are 64-bit.  */
      sp += BIAS;

      for (i = SPARC_L0_REGNUM; i <= SPARC_I7_REGNUM; i++)
	{
	  if (regnum == i || regnum == -1)
	    {
	      FUNC6 (sp + ((i - SPARC_L0_REGNUM) * 8), buf, 8);
	      FUNC3 (regcache, i, buf);
	    }
	}
    }
  else
    {
      /* Registers are 32-bit.  Toss any sign-extension of the stack
	 pointer.  */
      sp &= 0xffffffffUL;

      /* Clear out the top half of the temporary buffer, and put the
	 register value in the bottom half if we're in 64-bit mode.  */
      if (FUNC1 (current_gdbarch) == 64)
	{
	  FUNC2 (buf, 0, 4);
	  offset = 4;
	}

      for (i = SPARC_L0_REGNUM; i <= SPARC_I7_REGNUM; i++)
	{
	  if (regnum == i || regnum == -1)
	    {
	      FUNC6 (sp + ((i - SPARC_L0_REGNUM) * 4),
				  buf + offset, 4);

	      /* Handle StackGhost.  */
	      if (i == SPARC_I7_REGNUM)
		{
		  ULONGEST wcookie = FUNC4 ();
		  ULONGEST i7 = FUNC0 (buf + offset, 4);

		  FUNC5 (buf + offset, 4, i7 ^ wcookie);
		}

	      FUNC3 (regcache, i, buf);
	    }
	}
    }
}