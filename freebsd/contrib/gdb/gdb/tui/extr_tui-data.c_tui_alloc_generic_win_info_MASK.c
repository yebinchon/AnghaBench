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
struct tui_gen_win_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tui_gen_win_info*) ; 
 scalar_t__ FUNC1 (int) ; 

struct tui_gen_win_info *
FUNC2 (void)
{
  struct tui_gen_win_info * win;

  if ((win = (struct tui_gen_win_info *) FUNC1 (
		     sizeof (struct tui_gen_win_info *))) != (struct tui_gen_win_info *) NULL)
    FUNC0 (win);

  return win;
}