#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ti_tid; } ;
typedef  TYPE_1__ td_thrinfo_t ;
struct TYPE_7__ {int event; int /*<<< orphan*/  th_p; } ;
typedef  TYPE_2__ td_event_msg_t ;
typedef  scalar_t__ td_err_e ;
typedef  int /*<<< orphan*/  ptid_t ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ DECR_PC_AFTER_BREAK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  TD_CREATE 129 
#define  TD_DEATH 128 
 scalar_t__ TD_NOMSG ; 
 scalar_t__ TD_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ td_create_bp_addr ; 
 scalar_t__ td_death_bp_addr ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  thread_agent ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static void
FUNC10 (ptid_t ptid)
{
  td_event_msg_t msg;
  td_thrinfo_t ti;
  td_err_e err;
  CORE_ADDR stop_pc;
  int loop = 0;

  /* Bail out early if we're not at a thread event breakpoint.  */
  stop_pc = FUNC6 (ptid) - DECR_PC_AFTER_BREAK;
  if (stop_pc != td_create_bp_addr && stop_pc != td_death_bp_addr)
    return;

  /* If we are at a create breakpoint, we do not know what new lwp
     was created and cannot specifically locate the event message for it.
     We have to call td_ta_event_getmsg() to get
     the latest message.  Since we have no way of correlating whether
     the event message we get back corresponds to our breakpoint, we must
     loop and read all event messages, processing them appropriately.
     This guarantees we will process the correct message before continuing
     from the breakpoint.

     Currently, death events are not enabled.  If they are enabled,
     the death event can use the td_thr_event_getmsg() interface to
     get the message specifically for that lwp and avoid looping
     below.  */

  loop = 1;

  do
    {
      err = FUNC7 (thread_agent, &msg);
      if (err != TD_OK)
	{
	  if (err == TD_NOMSG)
	    return;

	  FUNC4 ("Cannot get thread event message: %s",
		 FUNC9 (err));
	}

      err = FUNC8 (msg.th_p, &ti);
      if (err != TD_OK)
	FUNC4 ("Cannot get thread info: %s", FUNC9 (err));

      ptid = FUNC0 (ti.ti_tid, FUNC1 (ptid));

      switch (msg.event)
	{
	case TD_CREATE:

	  /* We may already know about this thread, for instance when the
	     user has issued the `info threads' command before the SIGTRAP
	     for hitting the thread creation breakpoint was reported.  */
	  if (!FUNC5 (ptid))
	    FUNC2 (ptid, msg.th_p, &ti, 1);

	  break;

	case TD_DEATH:

	  if (!FUNC5 (ptid))
	    FUNC4 ("Spurious thread death event.");

	  FUNC3 (ptid, 1);

	  break;

	default:
	  FUNC4 ("Spurious thread event.");
	}
    }
  while (loop);
}