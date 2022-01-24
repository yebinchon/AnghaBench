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
struct TYPE_2__ {int key; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* tui_commands ; 

__attribute__((used)) static int
FUNC5 (int count, int key)
{
  int i;

  FUNC2 ();
  for (i = 0; tui_commands[i].cmd; i++)
    {
      if (tui_commands[i].key == key)
        {
          /* Must save the command because it can be modified
             by execute_command.  */
          char* cmd = FUNC0 (FUNC4 (tui_commands[i].cmd) + 1);
          FUNC3 (cmd, tui_commands[i].cmd);
          FUNC1 (cmd, TRUE);
          return 0;
        }
    }
  return 0;
}