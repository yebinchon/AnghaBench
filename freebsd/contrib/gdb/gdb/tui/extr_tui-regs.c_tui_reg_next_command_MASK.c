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
struct reggroup {int dummy; } ;
struct TYPE_4__ {struct reggroup* current_group; } ;
struct TYPE_5__ {TYPE_1__ data_display_info; } ;
struct TYPE_6__ {TYPE_2__ detail; } ;

/* Variables and functions */
 TYPE_3__* TUI_DATA_WIN ; 
 int /*<<< orphan*/  current_gdbarch ; 
 struct reggroup* FUNC0 (int /*<<< orphan*/ ,struct reggroup*) ; 
 int /*<<< orphan*/  FUNC1 (struct reggroup*) ; 

__attribute__((used)) static void
FUNC2 (char *arg, int from_tty)
{
  if (TUI_DATA_WIN != 0)
    {
      struct reggroup *group
        = TUI_DATA_WIN->detail.data_display_info.current_group;

      group = FUNC0 (current_gdbarch, group);
      if (group == 0)
        group = FUNC0 (current_gdbarch, 0);

      if (group)
        FUNC1 (group);
    }
}