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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* symfile_objfile ; 

void
FUNC8 (int from_tty)
{
  if ((FUNC4 () || FUNC5 ())
      && from_tty
      && !FUNC7 ("Discard symbol table from `%s'? ",
		 symfile_objfile->name))
    FUNC2 ("Not confirmed.");
    FUNC3 ();

    /* solib descriptors may have handles to objfiles.  Since their
       storage has just been released, we'd better wipe the solib
       descriptors as well.
     */
#if defined(SOLIB_RESTART)
    SOLIB_RESTART ();
#endif

    symfile_objfile = NULL;
    if (from_tty)
      FUNC6 ("No symbol file now.\n");
#ifdef HPUXHPPA
    RESET_HP_UX_GLOBALS ();
#endif
}