#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  th_p; } ;
typedef  TYPE_1__ td_event_msg_t ;
typedef  scalar_t__ td_err_e ;
struct inferior_linux_data {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ TD_OK ; 
 int /*<<< orphan*/  current_inferior ; 
 scalar_t__ debug_threads ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct inferior_linux_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  thread_agent ; 
 char* FUNC4 (scalar_t__) ; 

__attribute__((used)) static void
FUNC5 (CORE_ADDR where)
{
  td_event_msg_t msg;
  td_err_e err;
  struct inferior_linux_data *tdata;

  if (debug_threads)
    FUNC1 (stderr, "Thread creation event.\n");

  tdata = FUNC2 (current_inferior);

  /* FIXME: This assumes we don't get another event.
     In the LinuxThreads implementation, this is safe,
     because all events come from the manager thread
     (except for its own creation, of course).  */
  err = FUNC3 (thread_agent, &msg);
  if (err != TD_OK)
    FUNC1 (stderr, "thread getmsg err: %s\n",
	     FUNC4 (err));

  /* msg.event == TD_EVENT_CREATE */

  FUNC0 (msg.th_p, NULL);
}