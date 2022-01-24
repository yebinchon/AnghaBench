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
struct event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVLOOP_ONCE ; 
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct event*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct event*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * pair ; 
 int /*<<< orphan*/  re_add_read_cb ; 
 struct event* readd_test_event_last_added ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int test_ok ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC10(void)
{
	struct event ev1, ev2;

	FUNC7("Re-add nonpersistent events: ");
	FUNC5(&ev1, pair[0], EV_READ, re_add_read_cb, &ev2);
	FUNC5(&ev2, pair[1], EV_READ, re_add_read_cb, &ev1);

	if (FUNC9(pair[0], "Hello", 5) < 0) {
		FUNC8("write(pair[0])");
	}

	if (FUNC9(pair[1], "Hello", 5) < 0) {
		FUNC8("write(pair[1])\n");
	}

	if (FUNC1(&ev1, NULL) == -1 ||
	    FUNC1(&ev2, NULL) == -1) {
		test_ok = 0;
	}
	if (test_ok != 0)
		FUNC6(1);
	FUNC3(EVLOOP_ONCE);
	if (test_ok != 2)
		FUNC6(1);
	/* At this point, we executed both callbacks.  Whichever one got
	 * called first added the second, but the second then immediately got
	 * deleted before its callback was called.  At this point, though, it
	 * re-added the first.
	 */
	if (!readd_test_event_last_added) {
		test_ok = 0;
	} else if (readd_test_event_last_added == &ev1) {
		if (!FUNC4(&ev1, EV_READ, NULL) ||
		    FUNC4(&ev2, EV_READ, NULL))
			test_ok = 0;
	} else {
		if (FUNC4(&ev1, EV_READ, NULL) ||
		    !FUNC4(&ev2, EV_READ, NULL))
			test_ok = 0;
	}

	FUNC2(&ev1);
	FUNC2(&ev2);

	FUNC0();
}