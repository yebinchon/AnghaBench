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
typedef  int time_t ;
struct timezone {int dummy; } ;
struct timeval {scalar_t__ tv_sec; } ;

/* Variables and functions */
#define  AUDIT_TRIGGER_CLOSE_AND_DIE 135 
#define  AUDIT_TRIGGER_EXPIRE_TRAILS 134 
#define  AUDIT_TRIGGER_INITIALIZE 133 
#define  AUDIT_TRIGGER_LOW_SPACE 132 
#define  AUDIT_TRIGGER_NO_SPACE 131 
#define  AUDIT_TRIGGER_READ_FILE 130 
#define  AUDIT_TRIGGER_ROTATE_KERNEL 129 
#define  AUDIT_TRIGGER_ROTATE_USER 128 
 int AUD_STATE_DISABLED ; 
 int AUD_STATE_ENABLED ; 
 int DUPLICATE_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  audit_warn_expired ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int) ; 
 int FUNC8 () ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (struct timeval*,struct timezone*) ; 
 int /*<<< orphan*/  launchd_flag ; 

void
FUNC12(int trigger)
{
	static int last_trigger, last_warning;
	static time_t last_time;
	struct timeval ts;
	struct timezone tzp;
	time_t tt;
	int au_state;
	int err = 0;

	/*
	 * Suppress duplicate messages from the kernel within the specified
	 * interval.
	 */
	if (FUNC11(&ts, &tzp) == 0) {
		tt = (time_t)ts.tv_sec;
		switch (trigger) {
		case AUDIT_TRIGGER_LOW_SPACE:
		case AUDIT_TRIGGER_NO_SPACE:
			/*
			 * Triggers we can suppress.  Of course, we also need
			 * to rate limit the warnings, so apply the same
			 * interval limit on syslog messages.
			 */
			if ((trigger == last_trigger) &&
			    (tt < (last_time + DUPLICATE_INTERVAL))) {
				if (tt >= (last_warning + DUPLICATE_INTERVAL))
					FUNC5(
					    "Suppressing duplicate trigger %d",
					    trigger);
				return;
			}
			last_warning = tt;
			break;

		case AUDIT_TRIGGER_ROTATE_KERNEL:
		case AUDIT_TRIGGER_ROTATE_USER:
		case AUDIT_TRIGGER_READ_FILE:
		case AUDIT_TRIGGER_CLOSE_AND_DIE:
		case AUDIT_TRIGGER_INITIALIZE:
			/*
			 * Triggers that we cannot suppress.
			 */
			break;
		}

		/*
		 * Only update last_trigger after aborting due to a duplicate
		 * trigger, not before, or we will never allow that trigger
		 * again.
		 */
		last_trigger = trigger;
		last_time = tt;
	}

	au_state = FUNC3();

	/*
	 * Message processing is done here.
	 */
	switch(trigger) {
	case AUDIT_TRIGGER_LOW_SPACE:
		FUNC6("Got low space trigger");
		if (FUNC9() == -1)
			FUNC4("Error swapping audit file");
		break;

	case AUDIT_TRIGGER_NO_SPACE:
		FUNC6("Got no space trigger");
		if (FUNC9() == -1)
			FUNC4("Error swapping audit file");
		break;

	case AUDIT_TRIGGER_ROTATE_KERNEL:
	case AUDIT_TRIGGER_ROTATE_USER:
		FUNC5("Got open new trigger from %s", trigger ==
		    AUDIT_TRIGGER_ROTATE_KERNEL ? "kernel" : "user");
		if (au_state == AUD_STATE_ENABLED && FUNC9() == -1)
			FUNC4("Error swapping audit file");
		break;

	case AUDIT_TRIGGER_READ_FILE:
		FUNC5("Got read file trigger");
		if (au_state == AUD_STATE_ENABLED) {
			if (FUNC1() == -1)
				FUNC4("Error setting audit controls");
			else if (FUNC9() == -1)
				FUNC4("Error swapping audit file");
		}
		break;

	case AUDIT_TRIGGER_CLOSE_AND_DIE:
		FUNC5("Got close and die trigger");
		if (au_state == AUD_STATE_ENABLED)
			err = FUNC8();
		/*
		 * Running under launchd don't exit.  Wait for launchd to
		 * send SIGTERM.
		 */
		if (!launchd_flag) {
			FUNC5("auditd exiting.");
			FUNC10 (err);
		}
		break;

	case AUDIT_TRIGGER_INITIALIZE:
		FUNC5("Got audit initialize trigger");
		if (au_state == AUD_STATE_DISABLED)
			FUNC0();
		break;

	case AUDIT_TRIGGER_EXPIRE_TRAILS:
		FUNC5("Got audit expire trails trigger");
		err = FUNC2(audit_warn_expired);
		if (err)
			FUNC4("auditd_expire_trails(): %s",
			    FUNC7(err));
		break;

	default:
		FUNC4("Got unknown trigger %d", trigger);
		break;
	}
}