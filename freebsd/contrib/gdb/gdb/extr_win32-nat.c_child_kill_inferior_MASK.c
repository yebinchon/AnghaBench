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
struct TYPE_5__ {scalar_t__ dwDebugEventCode; } ;
struct TYPE_4__ {scalar_t__ h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  DBG_CONTINUE ; 
 scalar_t__ EXIT_PROCESS_DEBUG_EVENT ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__ current_event ; 
 scalar_t__ current_process_handle ; 
 TYPE_1__* current_thread ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6 (void)
{
  FUNC0 (FUNC2 (current_process_handle, 0));

  for (;;)
    {
      if (!FUNC4 (DBG_CONTINUE, -1))
	break;
      if (!FUNC3 (&current_event, INFINITE))
	break;
      if (current_event.dwDebugEventCode == EXIT_PROCESS_DEBUG_EVENT)
	break;
    }

  FUNC0 (FUNC1 (current_process_handle));

  /* this may fail in an attached process so don't check. */
  if (current_thread && current_thread->h)
    (void) FUNC1 (current_thread->h);
  FUNC5 ();	/* or just child_mourn_inferior? */
}