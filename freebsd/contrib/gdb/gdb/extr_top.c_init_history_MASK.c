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

/* Variables and functions */
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current_directory ; 
 char* FUNC2 (char*) ; 
 scalar_t__ history_filename ; 
 int history_size ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7 (void)
{
  char *tmpenv;

  tmpenv = FUNC2 ("HISTSIZE");
  if (tmpenv)
    history_size = FUNC0 (tmpenv);
  else if (!history_size)
    history_size = 256;

  FUNC5 (history_size);

  tmpenv = FUNC2 ("GDBHISTFILE");
  if (tmpenv)
    history_filename = FUNC4 (tmpenv, FUNC6 (tmpenv));
  else if (!history_filename)
    {
      /* We include the current directory so that if the user changes
         directories the file written will be the same as the one
         that was read.  */
#ifdef __MSDOS__
      /* No leading dots in file names are allowed on MSDOS.  */
      history_filename = concat (current_directory, "/_gdb_history", NULL);
#else
      history_filename = FUNC1 (current_directory, "/.gdb_history", NULL);
#endif
    }
  FUNC3 (history_filename);
}