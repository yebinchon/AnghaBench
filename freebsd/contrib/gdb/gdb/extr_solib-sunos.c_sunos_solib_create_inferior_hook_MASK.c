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
struct target_ops {int dummy; } ;

/* Variables and functions */
 scalar_t__ DECR_PC_AFTER_BREAK ; 
 int /*<<< orphan*/  NO_STOP_QUIETLY ; 
 int /*<<< orphan*/  PC_REGNUM ; 
 int /*<<< orphan*/  STOP_QUIETLY ; 
 scalar_t__ TARGET_SIGNAL_0 ; 
 scalar_t__ TARGET_SIGNAL_TRAP ; 
 int /*<<< orphan*/  auto_solib_add ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  debug_base ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,struct target_ops*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stop_pc ; 
 scalar_t__ stop_signal ; 
 int /*<<< orphan*/  stop_soon ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (void)
{
  /* Relocate the main executable if necessary.  */
  FUNC6 ();

  if ((debug_base = FUNC3 ()) == 0)
    {
      /* Can't find the symbol or the executable is statically linked. */
      return;
    }

  if (!FUNC2 ())
    {
      FUNC9 ("shared library handler failed to enable breakpoint");
      return;
    }

  /* SCO and SunOS need the loop below, other systems should be using the
     special shared library breakpoints and the shared library breakpoint
     service routine.

     Now run the target.  It will eventually hit the breakpoint, at
     which point all of the libraries will have been mapped in and we
     can go groveling around in the dynamic linker structures to find
     out what we need to know about them. */

  FUNC0 ();
  stop_soon = STOP_QUIETLY;
  stop_signal = TARGET_SIGNAL_0;
  do
    {
      FUNC7 (FUNC4 (-1), 0, stop_signal);
      FUNC8 ();
    }
  while (stop_signal != TARGET_SIGNAL_TRAP);
  stop_soon = NO_STOP_QUIETLY;

  /* We are now either at the "mapping complete" breakpoint (or somewhere
     else, a condition we aren't prepared to deal with anyway), so adjust
     the PC as necessary after a breakpoint, disable the breakpoint, and
     add any shared libraries that were mapped in. */

  if (DECR_PC_AFTER_BREAK)
    {
      stop_pc -= DECR_PC_AFTER_BREAK;
      FUNC10 (PC_REGNUM, stop_pc);
    }

  if (!FUNC1 ())
    {
      FUNC9 ("shared library handler failed to disable breakpoint");
    }

  FUNC5 ((char *) 0, 0, (struct target_ops *) 0, auto_solib_add);
}