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
 int /*<<< orphan*/  EVLOOP_NONBLOCK ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct event*) ; 
 int /*<<< orphan*/  FUNC4 (struct event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct event*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_cb ; 
 scalar_t__ test_ok ; 

__attribute__((used)) static void
FUNC6(void)
{
	struct event ev;

	test_ok = 0;
	FUNC4(&ev, SIGUSR1, signal_cb, &ev);
	FUNC2(&ev, NULL);
	FUNC5(SIGUSR1);
	FUNC1(EVLOOP_NONBLOCK);
	FUNC3(&ev);
	FUNC0();
}