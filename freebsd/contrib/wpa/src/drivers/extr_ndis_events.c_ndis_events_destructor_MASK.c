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
struct ndis_events_data {int /*<<< orphan*/  pLoc; int /*<<< orphan*/  pSvc; int /*<<< orphan*/  event_avail; int /*<<< orphan*/  write_pipe; int /*<<< orphan*/  read_pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ wmi_refcnt ; 

__attribute__((used)) static void FUNC4(struct ndis_events_data *events)
{
	FUNC0(events->read_pipe);
	FUNC0(events->write_pipe);
	FUNC0(events->event_avail);
	FUNC3(events->pSvc);
	FUNC2(events->pLoc);
	if (--wmi_refcnt == 0)
		FUNC1();
}