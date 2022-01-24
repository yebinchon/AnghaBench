#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  td_thr_events_t ;
typedef  int /*<<< orphan*/  td_notify_t ;
typedef  scalar_t__ td_err_e ;

/* Variables and functions */
 int /*<<< orphan*/  TD_CREATE ; 
 int /*<<< orphan*/  TD_DEATH ; 
 scalar_t__ TD_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ td_create_bp_addr ; 
 scalar_t__ td_death_bp_addr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * td_ta_event_addr_p ; 
 int /*<<< orphan*/ * td_ta_event_getmsg_p ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * td_thr_event_enable_p ; 
 int /*<<< orphan*/  thread_agent ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (void)
{
  td_thr_events_t events;
  td_notify_t notify;
  td_err_e err;

  /* We cannot use the thread event reporting facility if these
     functions aren't available.  */
  if (td_ta_event_addr_p == NULL || &td_ta_set_event_p == NULL
      || td_ta_event_getmsg_p == NULL || td_thr_event_enable_p == NULL)
    return;

  /* Set the process wide mask saying which events we're interested in.  */
  FUNC3 (&events);
  FUNC2 (&events, TD_CREATE);
#if 0
  /* FIXME: kettenis/2000-04-23: The event reporting facility is
     broken for TD_DEATH events in glibc 2.1.3, so don't enable it for
     now.  */
  td_event_addset (&events, TD_DEATH);
#endif

  err = FUNC4 (thread_agent, &events);
  if (err != TD_OK)
    {
      FUNC6 ("Unable to set global thread event mask: %s",
	       FUNC5 (err));
      return;
    }

  /* Delete previous thread event breakpoints, if any.  */
  FUNC1 ();
  td_create_bp_addr = 0;
  td_death_bp_addr = 0;

  /* Set up the thread creation event.  */
  err = FUNC0 (thread_agent, TD_CREATE, &td_create_bp_addr);
  if (err != TD_OK)
    {
      FUNC6 ("Unable to get location for thread creation breakpoint: %s",
	       FUNC5 (err));
      return;
    }

  /* Set up the thread death event.  */
  err = FUNC0 (thread_agent, TD_DEATH, &td_death_bp_addr);
  if (err != TD_OK)
    {
      FUNC6 ("Unable to get location for thread death breakpoint: %s",
	       FUNC5 (err));
      return;
    }
}