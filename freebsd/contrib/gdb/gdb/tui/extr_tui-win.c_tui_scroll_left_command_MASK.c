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
struct tui_win_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEFT_SCROLL ; 
 int /*<<< orphan*/  FUNC0 (char*,struct tui_win_info**,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct tui_win_info*,int) ; 

__attribute__((used)) static void
FUNC3 (char *arg, int from_tty)
{
  int num_to_scroll;
  struct tui_win_info * win_to_scroll;

  /* Make sure the curses mode is enabled.  */
  FUNC1 ();
  FUNC0 (arg, &win_to_scroll, &num_to_scroll);
  FUNC2 (LEFT_SCROLL, win_to_scroll, num_to_scroll);
}