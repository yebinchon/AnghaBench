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
struct TYPE_2__ {int /*<<< orphan*/  height; scalar_t__ is_visible; } ;
struct tui_win_info {TYPE_1__ generic; } ;
typedef  enum tui_win_type { ____Placeholder_tui_win_type } tui_win_type ;

/* Variables and functions */
 int MAX_MAJOR_WINDOWS ; 
 int SRC_WIN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tui_win_info** tui_win_list ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct tui_win_info* FUNC2 () ; 

__attribute__((used)) static void
FUNC3 (char *arg, int from_tty)
{
  enum tui_win_type type;
  struct tui_win_info * win_with_focus = FUNC2 ();

  for (type = SRC_WIN; (type < MAX_MAJOR_WINDOWS); type++)
    if (tui_win_list[type] && tui_win_list[type]->generic.is_visible)
      {
	if (win_with_focus == tui_win_list[type])
	  FUNC0 ("        %s\t(%d lines)  <has focus>\n",
			   FUNC1 (&tui_win_list[type]->generic),
			   tui_win_list[type]->generic.height);
	else
	  FUNC0 ("        %s\t(%d lines)\n",
			   FUNC1 (&tui_win_list[type]->generic),
			   tui_win_list[type]->generic.height);
      }
}