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
 int /*<<< orphan*/  TARGET_SIGNAL_DEFAULT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ exec_bfd ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6 (char *execfile, char *args, char **env)
{
  CORE_ADDR entry_pt;

  if (args && *args)
    {
      FUNC5 ("\
Can't pass arguments to remote MIPS board; arguments ignored.");
      /* And don't try to use them on the next "run" command.  */
      FUNC2 ("set args", 0);
    }

  if (execfile == 0 || exec_bfd == 0)
    FUNC1 ("No executable file specified");

  entry_pt = (CORE_ADDR) FUNC0 (exec_bfd);

  FUNC3 ();

  /* FIXME: Should we set inferior_ptid here?  */

  FUNC4 (entry_pt, TARGET_SIGNAL_DEFAULT, 0);
}