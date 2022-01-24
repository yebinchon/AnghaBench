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
struct target_ops {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * obfd; } ;

/* Variables and functions */
 int DYNAMIC ; 
 int /*<<< orphan*/  NO_STOP_QUIETLY ; 
 int /*<<< orphan*/  STOP_QUIETLY ; 
 scalar_t__ TARGET_SIGNAL_0 ; 
 scalar_t__ TARGET_SIGNAL_TRAP ; 
 int /*<<< orphan*/  auto_solib_add ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  minus_one_ptid ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,struct target_ops*,int /*<<< orphan*/ ) ; 
 scalar_t__ stop_signal ; 
 int /*<<< orphan*/  stop_soon ; 
 TYPE_1__* symfile_objfile ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6 (void)
{
  /* Nothing to do for statically bound executables.  */

  if (symfile_objfile == NULL
      || symfile_objfile->obfd == NULL
      || ((FUNC0 (symfile_objfile->obfd) & DYNAMIC) == 0))
    return;

  /* Now run the target.  It will eventually get a SIGTRAP, at
     which point all of the libraries will have been mapped in and we
     can go groveling around in the rld structures to find
     out what we need to know about them. */

  FUNC1 ();
  stop_soon = STOP_QUIETLY;
  stop_signal = TARGET_SIGNAL_0;
  do
    {
      FUNC4 (minus_one_ptid, 0, stop_signal);
      FUNC5 ();
    }
  while (stop_signal != TARGET_SIGNAL_TRAP);

  /*  solib_add will call reinit_frame_cache.
     But we are stopped in the runtime loader and we do not have symbols
     for the runtime loader. So heuristic_proc_start will be called
     and will put out an annoying warning.
     Delaying the resetting of stop_soon until after symbol loading
     suppresses the warning.  */
  FUNC3 ((char *) 0, 0, (struct target_ops *) 0, auto_solib_add);
  stop_soon = NO_STOP_QUIETLY;

  /* Enable breakpoints disabled (unnecessarily) by clear_solib().  */
  FUNC2 ();
}