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
struct TYPE_2__ {scalar_t__ arch; } ;

/* Variables and functions */
 int CCR_REGNUM ; 
 int GBR_REGNUM ; 
 int MACH_REGNUM ; 
 int MACL_REGNUM ; 
 int PC_REGNUM ; 
 int PR_REGNUM ; 
 int SR_REGNUM ; 
 TYPE_1__* TARGET_ARCHITECTURE ; 
 int VBR_REGNUM ; 
 scalar_t__ bfd_arch_h8300 ; 
 scalar_t__ bfd_arch_sh ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 

__attribute__((used)) static void
FUNC6 (int regno)
{
  char buf[200];

  if (regno == -1)
    {
      FUNC0 ();
      return;
    }

  if (TARGET_ARCHITECTURE->arch == bfd_arch_h8300)
    {
      if (regno <= 7)
	{
	  FUNC5 (buf, ".ER%d %s\r", regno, FUNC2 (FUNC4 (regno), 0));
	  FUNC3 (buf);
	}
      else if (regno == PC_REGNUM)
	{
	  FUNC5 (buf, ".PC %s\r", FUNC2 (FUNC4 (regno), 0));
	  FUNC3 (buf);
	}
#ifdef CCR_REGNUM
      else if (regno == CCR_REGNUM)
	{
	  sprintf (buf, ".CCR %s\r", phex_nz (read_register (regno), 0));
	  puts_e7000debug (buf);
	}
#endif
    }

  else if (TARGET_ARCHITECTURE->arch == bfd_arch_sh)
    {
      if (regno == PC_REGNUM)
	{
	  FUNC5 (buf, ".PC %s\r", FUNC2 (FUNC4 (regno), 0));
	  FUNC3 (buf);
	}

      else if (regno == SR_REGNUM)
	{
	  FUNC5 (buf, ".SR %s\r", FUNC2 (FUNC4 (regno), 0));
	  FUNC3 (buf);
	}

      else if (regno ==  PR_REGNUM)
	{
	  FUNC5 (buf, ".PR %s\r", FUNC2 (FUNC4 (regno), 0));
	  FUNC3 (buf);
	}

      else if (regno == GBR_REGNUM)
	{
	  FUNC5 (buf, ".GBR %s\r", FUNC2 (FUNC4 (regno), 0));
	  FUNC3 (buf);
	}

      else if (regno == VBR_REGNUM)
	{
	  FUNC5 (buf, ".VBR %s\r", FUNC2 (FUNC4 (regno), 0));
	  FUNC3 (buf);
	}

      else if (regno == MACH_REGNUM)
	{
	  FUNC5 (buf, ".MACH %s\r", FUNC2 (FUNC4 (regno), 0));
	  FUNC3 (buf);
	}

      else if (regno == MACL_REGNUM)
	{
	  FUNC5 (buf, ".MACL %s\r", FUNC2 (FUNC4 (regno), 0));
	  FUNC3 (buf);
	}
      else
	{
	  FUNC5 (buf, ".R%d %s\r", regno, FUNC2 (FUNC4 (regno), 0));
	  FUNC3 (buf);
	}
    }

  FUNC1 ();
}