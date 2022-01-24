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
struct timeval {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGUSR1 ; 
 int called ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct event_base* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct event*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC5 (struct event*,int /*<<< orphan*/ ,struct event*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  signal_cb_swp ; 
 int /*<<< orphan*/  FUNC8 (struct event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int test_ok ; 
 int /*<<< orphan*/  timeout_cb_swp ; 

__attribute__((used)) static void
FUNC9(void)
{
	struct event_base *base = FUNC3();
	struct event ev, ev_timer;
	struct timeval tv = {0, 0};

	FUNC6("Receiving a signal while processing other signal: ");

	called = -1;
	test_ok = 1;
	FUNC8(&ev, SIGUSR1, signal_cb_swp, NULL);
	FUNC7(&ev, NULL);
	FUNC5(&ev_timer, timeout_cb_swp, &ev_timer);
	FUNC4(&ev_timer, &tv);
	FUNC2();

	FUNC1(base);
	FUNC0();
	return;
}