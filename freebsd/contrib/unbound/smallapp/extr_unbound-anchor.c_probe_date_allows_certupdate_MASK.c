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
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ verb ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(const char* root_anchor_file)
{
	int has_pending_keys = FUNC1(root_anchor_file);
	int32_t last_success = FUNC2(root_anchor_file);
	int32_t now = (int32_t)FUNC3(NULL);
	int32_t leeway = 30 * 24 * 3600; /* 30 days leeway */
	/* if the date is before 2010-07-15:00.00.00 then the root has not
	 * been signed yet, and thus we refuse to take action. */
	if(FUNC3(NULL) < FUNC4("2010-07-15T00:00:00")) {
		if(verb) FUNC0("the date is before the root was first signed,"
			" please correct the clock\n");
		return 0;
	}
	if(last_success == 0)
		return 1; /* no probe time */
	if(has_pending_keys)
		return 1; /* key in ADDPEND state, a previous probe has
		inserted that, and it was present in all recent probes,
		but it has not become active.  The 30 day timer may not have
		expired, but we know(for sure) there is a rollover going on.
		If we only managed to pickup the new key on its last day
		of announcement (for example) this can happen. */
	if(now - last_success < 0) {
		if(verb) FUNC0("the last successful probe is in the future,"
			" clock was modified\n");
		return 0;
	}
	if(now - last_success >= leeway) {
		if(verb) FUNC0("the last successful probe was more than 30 "
			"days ago\n");
		return 1;
	}
	if(verb) FUNC0("the last successful probe is recent\n");
	return 0;
}