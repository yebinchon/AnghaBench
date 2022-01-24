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
struct minimal_symbol {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 unsigned int DLD_FLAGS_HOOKVALID ; 
 int /*<<< orphan*/  FUNC0 (struct minimal_symbol*) ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 unsigned int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 struct minimal_symbol* FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct cleanup* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int,unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC9 (int pid)
{
  CORE_ADDR addr;
  struct minimal_symbol *msymbol;
  int status;
  char dld_flags_buffer[4];
  unsigned int dld_flags_value;
  struct cleanup *old_cleanups = FUNC5 ();

  /* Ensure that we're really operating on the specified process. */
  inferior_ptid = FUNC4 (pid);

  /* We won't bother to remove the solib breakpoints from this process.

     In fact, on PA64 the breakpoint is hard-coded into the dld callback,
     and thus we're not supposed to remove it.

     Rather, we'll merely clear the dld_flags bit that enables callbacks.
   */
  msymbol = FUNC3 ("__dld_flags", NULL, NULL);

  addr = FUNC0 (msymbol);
  status = FUNC7 (addr, dld_flags_buffer, 4);

  dld_flags_value = FUNC2 (dld_flags_buffer, 4);

  dld_flags_value &= ~DLD_FLAGS_HOOKVALID;
  FUNC6 (dld_flags_buffer, 4, dld_flags_value);
  status = FUNC8 (addr, dld_flags_buffer, 4);

  FUNC1 (old_cleanups);
}