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
typedef  int /*<<< orphan*/  td_thr_events_t ;
struct TYPE_4__ {scalar_t__ bptaddr; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef  TYPE_2__ td_notify_t ;
typedef  scalar_t__ td_err_e ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  TD_CREATE ; 
 int /*<<< orphan*/  TD_DEATH ; 
 scalar_t__ TD_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread_agent ; 
 int /*<<< orphan*/  thread_db_create_event ; 
 int /*<<< orphan*/  thread_db_death_event ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7 ()
{
  td_thr_events_t events;
  td_notify_t notify;
  td_err_e err;

  /* Set the process wide mask saying which events we're interested in.  */
  FUNC2 (&events);
  FUNC1 (&events, TD_CREATE);

#if 0
  /* This is reported to be broken in glibc 2.1.3.  A different approach
     will be necessary to support that.  */
  td_event_addset (&events, TD_DEATH);
#endif

  err = FUNC4 (thread_agent, &events);
  if (err != TD_OK)
    {
      FUNC6 ("Unable to set global thread event mask: %s",
               FUNC5 (err));
      return 0;
    }

  /* Get address for thread creation breakpoint.  */
  err = FUNC3 (thread_agent, TD_CREATE, &notify);
  if (err != TD_OK)
    {
      FUNC6 ("Unable to get location for thread creation breakpoint: %s",
	       FUNC5 (err));
      return 0;
    }
  FUNC0 ((CORE_ADDR) (unsigned long) notify.u.bptaddr,
		     thread_db_create_event);

#if 0
  /* Don't concern ourselves with reported thread deaths, only
     with actual thread deaths (via wait).  */

  /* Get address for thread death breakpoint.  */
  err = td_ta_event_addr (thread_agent, TD_DEATH, &notify);
  if (err != TD_OK)
    {
      warning ("Unable to get location for thread death breakpoint: %s",
	       thread_db_err_str (err));
      return;
    }
  set_breakpoint_at ((CORE_ADDR) (unsigned long) notify.u.bptaddr,
		     thread_db_death_event);
#endif

  return 1;
}