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
 int /*<<< orphan*/  LAYOUT_USAGE ; 
 scalar_t__ TUI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (char *arg, int from_tty)
{
  /* Make sure the curses mode is enabled.  */
  FUNC0 ();

  /* Switch to the selected layout.  */
  if (FUNC1 (arg) != TUI_SUCCESS)
    FUNC2 ("Invalid layout specified.\n%s", LAYOUT_USAGE);

}