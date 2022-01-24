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
struct ndis_events_data {int ref; int /*<<< orphan*/  write_pipe; int /*<<< orphan*/  read_pipe; int /*<<< orphan*/ * event_avail; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC5(struct ndis_events_data *events)
{
	events->ref = 1;

	if (!FUNC2(&events->read_pipe, &events->write_pipe, NULL, 512)) {
		FUNC4(MSG_ERROR, "CreatePipe() failed: %d",
			   (int) FUNC3());
		return -1;
	}
	events->event_avail = FUNC1(NULL, TRUE, FALSE, NULL);
	if (events->event_avail == NULL) {
		FUNC4(MSG_ERROR, "CreateEvent() failed: %d",
			   (int) FUNC3());
		FUNC0(events->read_pipe);
		FUNC0(events->write_pipe);
		return -1;
	}

	return 0;
}