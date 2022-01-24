#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int width; int height; } ;
struct TYPE_4__ {TYPE_1__ generic; } ;

/* Variables and functions */
 TYPE_2__* TUI_CMD_WIN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 scalar_t__ tui_active ; 

void
FUNC3 (void)
{
  char cmd[50];
  int screenheight, screenwidth;

  FUNC1 (&screenheight, &screenwidth);
  /* Set to TUI command window dimension or use readline values.  */
  FUNC2 (cmd, "set width %d",
           tui_active ? TUI_CMD_WIN->generic.width : screenwidth);
  FUNC0 (cmd, 0);
  FUNC2 (cmd, "set height %d",
           tui_active ? TUI_CMD_WIN->generic.height : screenheight);
  FUNC0 (cmd, 0);
}