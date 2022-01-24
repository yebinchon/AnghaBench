#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  h; } ;
struct TYPE_4__ {scalar_t__ dwDebugEventCode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBG_CONTINUE ; 
 scalar_t__ EXIT_PROCESS_DEBUG_EVENT ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ current_event ; 
 int /*<<< orphan*/  current_process_handle ; 
 TYPE_2__* current_thread ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC6 (void)
{
  FUNC0 (FUNC4 (current_process_handle));

  for (;;)
    {
      if (!FUNC1 (DBG_CONTINUE, -1))
	break;
      if (!FUNC5 (&current_event, INFINITE))
	break;
      if (current_event.dwDebugEventCode == EXIT_PROCESS_DEBUG_EVENT)
	break;
    }

  FUNC0 (FUNC2 (current_process_handle));
  FUNC2 (current_thread->h);
  FUNC3 ();	/* or just child_mourn_inferior? */
}