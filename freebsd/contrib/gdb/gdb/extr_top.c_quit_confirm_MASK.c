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
 scalar_t__ attach_flag ; 
 int /*<<< orphan*/  inferior_ptid ; 
 scalar_t__ init_ui_hook ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ target_has_execution ; 

int
FUNC2 (void)
{
  if (! FUNC0 (inferior_ptid, null_ptid) && target_has_execution)
    {
      char *s;

      /* This is something of a hack.  But there's no reliable way to
         see if a GUI is running.  The `use_windows' variable doesn't
         cut it.  */
      if (init_ui_hook)
	s = "A debugging session is active.\nDo you still want to close the debugger?";
      else if (attach_flag)
	s = "The program is running.  Quit anyway (and detach it)? ";
      else
	s = "The program is running.  Exit anyway? ";

      if (!FUNC1 ("%s", s))
	return 0;
    }

  return 1;
}