#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gdb_wince_result ;
typedef  int /*<<< orphan*/  ev ;
struct TYPE_5__ {scalar_t__ dwDebugEventCode; int /*<<< orphan*/  dwThreadId; int /*<<< orphan*/  dwProcessId; } ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_1__ DEBUG_EVENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBG_CONTINUE ; 
 int /*<<< orphan*/  GDB_WAITFORDEBUGEVENT ; 
 scalar_t__ OUTPUT_DEBUG_STRING_EVENT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5 (int s)
{
  DWORD ms = FUNC2 (L"WaitForDebugEvent ms", s, GDB_WAITFORDEBUGEVENT);
  gdb_wince_result res;
  DEBUG_EVENT ev;
  static int skip_next = 0;

  for (;;)
    {
      res = FUNC1 (&ev, ms);

      if (ev.dwDebugEventCode == OUTPUT_DEBUG_STRING_EVENT)
	{
	  if (skip_next)
	    {
	      skip_next--;
	      goto ignore;
	    }
	  if ((skip_next = FUNC4 (&ev)))
	    goto ignore;
	}

      FUNC3 (L"WaitForDebugEvent event", res, s, GDB_WAITFORDEBUGEVENT,
		 &ev, sizeof (ev));
      break;

    ignore:
      FUNC0 (ev.dwProcessId, ev.dwThreadId, DBG_CONTINUE);
    }

  return;
}