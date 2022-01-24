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
 int AUD_STATE_DISABLED ; 
 int AUD_STATE_ENABLED ; 
 int AUD_STATE_INIT ; 
 int /*<<< orphan*/  __BSM_INTERNAL_NOTIFY_KEY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int auditing_state ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(int state)
{
	int old_auditing_state = auditing_state;

	if (state == AUD_STATE_INIT)
		FUNC1();
	else
		auditing_state = state;

	if (auditing_state != old_auditing_state) {
		FUNC2(__BSM_INTERNAL_NOTIFY_KEY);

		if (auditing_state == AUD_STATE_ENABLED)
			FUNC0("Auditing enabled");	
		if (auditing_state == AUD_STATE_DISABLED)
			FUNC0("Auditing disabled");
	}
}