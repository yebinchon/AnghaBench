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
 int SPARC_SP_REGNUM ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct regcache const*,int,char*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 

void
FUNC6 (const struct regcache *regcache,
		       CORE_ADDR sp, int regnum)
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
	  if (regnum == -1 || regnum == SPARC_SP_REGNUM || regnum == i)
	    {
	      FUNC2 (regcache, i, buf);
	      FUNC5 (sp + ((i - SPARC_L0_REGNUM) * 8), buf, 8);
	    }
	}
    }
  else
    {
      /* Registers are 32-bit.  Toss any sign-extension of the stack
	 pointer.  */
      sp &= 0xffffffffUL;

      /* Only use the bottom half if we're in 64-bit mode.  */
      if (FUNC1 (current_gdbarch) == 64)
	offset = 4;

      for (i = SPARC_L0_REGNUM; i <= SPARC_I7_REGNUM; i++)
	{
	  if (regnum == -1 || regnum == SPARC_SP_REGNUM || regnum == i)
	    {
	      FUNC2 (regcache, i, buf);

	      /* Handle StackGhost.  */
	      if (i == SPARC_I7_REGNUM)
		{
		  ULONGEST wcookie = FUNC3 ();
		  ULONGEST i7 = FUNC0 (buf + offset, 4);

		  FUNC4 (buf + offset, 4, i7 ^ wcookie);
		}

	      FUNC5 (sp + ((i - SPARC_L0_REGNUM) * 4),
				   buf + offset, 4);
	    }
	}
    }
}