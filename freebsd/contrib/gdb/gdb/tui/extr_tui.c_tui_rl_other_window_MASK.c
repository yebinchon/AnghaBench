#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  handle; } ;
struct tui_win_info {TYPE_2__ generic; } ;
struct TYPE_4__ {scalar_t__ is_visible; } ;
struct TYPE_6__ {TYPE_1__ generic; } ;

/* Variables and functions */
 struct tui_win_info* TUI_CMD_WIN ; 
 TYPE_3__* TUI_DATA_WIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tui_active ; 
 struct tui_win_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tui_win_info*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6 (int count, int key)
{
  struct tui_win_info * win_info;

  if (!tui_active)
    FUNC3 (0/*notused*/, 0/*notused*/);

  win_info = FUNC1 (FUNC5 ());
  if (win_info)
    {
      FUNC4 (win_info);
      if (TUI_DATA_WIN && TUI_DATA_WIN->generic.is_visible)
        FUNC2 ();
      FUNC0 (TUI_CMD_WIN->generic.handle, (win_info != TUI_CMD_WIN));
    }
  return 0;
}