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
 scalar_t__ BC_BREAKPOINTS ; 
 int MAX_E7000DEBUG_BREAKPOINTS ; 
 scalar_t__* breakaddr ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int
FUNC6 (CORE_ADDR addr, char *shadow)
{
  int i;
  char buf[200];

  for (i = 0; i < MAX_E7000DEBUG_BREAKPOINTS; i++)
    if (breakaddr[i] == addr)
      {
	breakaddr[i] = 0;
#ifdef HARD_BREAKPOINTS
	if (BC_BREAKPOINTS)
	  {
	    sprintf (buf, "BC%d - \r", i + 1);
	    puts_e7000debug (buf);
	  }
	else
	  {
	    sprintf (buf, "B - %s\r", paddr_nz (addr));
	    puts_e7000debug (buf);
	  }
	expect_prompt ();
#else
	FUNC4 (buf, "B - %s\r", FUNC2 (addr));
	FUNC3 (buf);
	FUNC1 ();

#if 0
	/* Replace the insn under the break */
	e7000_write_inferior_memory (addr, shadow, 2);
#endif
#endif

	return 0;
      }
 
  FUNC5 ("Can't find breakpoint associated with 0x%s\n", FUNC2 (addr));
  return 1;
}