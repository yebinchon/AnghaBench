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
struct TYPE_4__ {int /*<<< orphan*/ * execution_info; } ;
struct TYPE_5__ {TYPE_1__ source_info; } ;
struct tui_win_info {TYPE_2__ detail; int /*<<< orphan*/  generic; } ;
struct TYPE_6__ {int count; scalar_t__* list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 () ; 

void
FUNC2 (void)
{
  int i;

  for (i = 0; i < (FUNC1 ())->count; i++)
    {
      struct tui_win_info * win_info = (struct tui_win_info *) (FUNC1 ())->list[i];

      if (win_info != NULL)
	{
	  FUNC0 (&(win_info->generic));
	  FUNC0 (win_info->detail.source_info.execution_info);
	}
    }
}