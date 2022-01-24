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
struct tui_layout_def {size_t display_mode; int /*<<< orphan*/  regs_display_type; scalar_t__ split; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISASSEM_DATA_COMMAND ; 
 int /*<<< orphan*/  SRC_COMMAND ; 
 int /*<<< orphan*/  SRC_DISASSEM_COMMAND ; 
 size_t SRC_WIN ; 
 int /*<<< orphan*/  TUI_UNDEFINED_REGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * tui_win_list ; 

__attribute__((used)) static void
FUNC2 (struct tui_layout_def * layout_def)
{
  if (layout_def->split)
    {
      FUNC0 (SRC_DISASSEM_COMMAND, TUI_UNDEFINED_REGS);
      FUNC1 (tui_win_list[layout_def->display_mode]);
    }
  else
    {
      if (layout_def->display_mode == SRC_WIN)
	FUNC0 (SRC_COMMAND, TUI_UNDEFINED_REGS);
      else
	FUNC0 (DISASSEM_DATA_COMMAND, layout_def->regs_display_type);
    }
}