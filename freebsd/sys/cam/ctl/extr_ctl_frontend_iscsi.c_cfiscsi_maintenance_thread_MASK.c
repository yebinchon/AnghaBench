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
struct cfiscsi_session {int cs_terminating; int cs_handoff_in_progress; int /*<<< orphan*/  cs_conn; int /*<<< orphan*/  cs_callout; int /*<<< orphan*/  cs_lock; int /*<<< orphan*/  cs_maintenance_cv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfiscsi_session*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfiscsi_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfiscsi_session*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cfiscsi_session*) ; 
 int /*<<< orphan*/  FUNC5 (struct cfiscsi_session*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	struct cfiscsi_session *cs;

	cs = arg;

	for (;;) {
		FUNC1(cs);
		if (cs->cs_terminating == false || cs->cs_handoff_in_progress)
			FUNC6(&cs->cs_maintenance_cv, &cs->cs_lock);
		FUNC2(cs);

		if (cs->cs_terminating && cs->cs_handoff_in_progress == false) {

			/*
			 * We used to wait up to 30 seconds to deliver queued
			 * PDUs to the initiator.  We also tried hard to deliver
			 * SCSI Responses for the aborted PDUs.  We don't do
			 * that anymore.  We might need to revisit that.
			 */
			FUNC3(&cs->cs_callout);
			FUNC7(cs->cs_conn);

			/*
			 * At this point ICL receive thread is no longer
			 * running; no new tasks can be queued.
			 */
			FUNC5(cs);
			FUNC4(cs);
			FUNC8();
			return;
		}
		FUNC0(cs, "nothing to do");
	}
}