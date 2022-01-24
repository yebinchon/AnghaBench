#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  highlight; } ;
struct TYPE_13__ {TYPE_5__ data; } ;
struct tui_win_element {TYPE_6__ which_element; } ;
struct tui_gen_win_info {scalar_t__* content; } ;
struct tui_data_info {int regs_content_count; struct reggroup* current_group; TYPE_4__** regs_content; int /*<<< orphan*/  display_regs; } ;
struct reggroup {int dummy; } ;
typedef  enum tui_status { ____Placeholder_tui_status } tui_status ;
struct TYPE_9__ {struct tui_data_info data_display_info; } ;
struct TYPE_8__ {int /*<<< orphan*/  is_visible; } ;
struct TYPE_14__ {TYPE_2__ detail; TYPE_1__ generic; } ;
struct TYPE_10__ {struct tui_gen_win_info data_window; } ;
struct TYPE_11__ {TYPE_3__ which_element; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_NAME ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NO_REGS_STRING ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_7__* TUI_DATA_WIN ; 
 int TUI_FAILURE ; 
 int /*<<< orphan*/  current_gdbarch ; 
 struct reggroup* general_reggroup ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ target_has_memory ; 
 scalar_t__ target_has_registers ; 
 scalar_t__ target_has_stack ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct reggroup*,int /*<<< orphan*/ ,int) ; 

void
FUNC6 (struct reggroup *group)
{
  enum tui_status ret = TUI_FAILURE;
  struct tui_data_info *display_info;

  /* Make sure the curses mode is enabled.  */
  FUNC2 ();

  /* Make sure the register window is visible.  If not, select an
     appropriate layout.  */
  if (TUI_DATA_WIN == NULL || !TUI_DATA_WIN->generic.is_visible)
    FUNC4 (DATA_NAME);

  display_info = &TUI_DATA_WIN->detail.data_display_info;
  if (group == 0)
    group = general_reggroup;

  /* Say that registers should be displayed, even if there is a problem.  */
  display_info->display_regs = TRUE;

  if (target_has_registers && target_has_stack && target_has_memory)
    {
      ret = FUNC5 (current_gdbarch, group,
                                     FUNC0 (),
                                     group == display_info->current_group);
    }
  if (ret == TUI_FAILURE)
    {
      display_info->current_group = 0;
      FUNC3 (NO_REGS_STRING);
    }
  else
    {
      int i;

      /* Clear all notation of changed values */
      for (i = 0; i < display_info->regs_content_count; i++)
	{
	  struct tui_gen_win_info *data_item_win;
          struct tui_win_element *win;

	  data_item_win = &display_info->regs_content[i]
            ->which_element.data_window;
          win = (struct tui_win_element *) data_item_win->content[0];
          win->which_element.data.highlight = FALSE;
	}
      display_info->current_group = group;
      FUNC1 ();
    }
}