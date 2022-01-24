#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  handle; } ;
struct TYPE_5__ {int /*<<< orphan*/  curch; int /*<<< orphan*/  start_line; } ;
struct TYPE_6__ {TYPE_1__ command_info; } ;
struct TYPE_8__ {TYPE_3__ generic; TYPE_2__ detail; } ;

/* Variables and functions */
 TYPE_4__* TUI_CMD_WIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,void (*) (int)) ; 
 scalar_t__ tui_active ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (int sig)
{
  if (tui_active)
    {
      /* Restore the terminal setting because another process (shell)
         might have changed it.  */
      FUNC0 ();

      /* Force a refresh of the screen.  */
      FUNC2 ();

      /* Update cursor position on the screen.  */
      FUNC3 (TUI_CMD_WIN->generic.handle,
             TUI_CMD_WIN->detail.command_info.start_line,
             TUI_CMD_WIN->detail.command_info.curch);
      FUNC4 (TUI_CMD_WIN->generic.handle);
    }
  FUNC1 (sig, tui_cont_sig);
}