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

/* Variables and functions */
 int /*<<< orphan*/  AUD_STATE_INIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  launchd_flag ; 

__attribute__((used)) static void
FUNC7(void)
{
	int err;

	if (FUNC2(launchd_flag) < 0) {
		FUNC1("Error opening trigger messaging mechanism");
		FUNC6();
	}

	/*
	 * To prevent event feedback cycles and avoid auditd becoming
	 * stalled if auditing is suspended, auditd and its children run
	 * without their events being audited.  We allow the uid, tid, and
	 * mask fields to be implicitly set to zero, but do set the pid.  We
	 * run this after opening the trigger device to avoid configuring
	 * audit state without audit present in the system.
	 */
	err = FUNC3();
	if (err) {
		FUNC1("auditd_prevent_audit() %s: %m",
		    FUNC5(err));
		FUNC6();
	}

	/*
	 * Make sure auditd auditing state is correct.
	 */
	FUNC4(AUD_STATE_INIT);

	/*
	 * If under launchd, don't start auditing.  Wait for a trigger to
	 * do so.
	 */
	if (!launchd_flag)
		FUNC0();
}