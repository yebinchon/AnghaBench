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
struct tui_layout_def {int split; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct tui_layout_def*) ; 
 struct tui_layout_def* FUNC2 () ; 

__attribute__((used)) static void
FUNC3 (char *arg, int from_tty)
{
  struct tui_layout_def * layout_def = FUNC2 ();

  /* Make sure the curses mode is enabled.  */
  FUNC0 ();
  layout_def->split = (!layout_def->split);
  FUNC1 (layout_def);
}