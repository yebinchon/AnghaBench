#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int tv_usec; scalar_t__ tv_sec; } ;
struct itimerval {TYPE_1__ it_value; } ;
struct event {int dummy; } ;
typedef  int /*<<< orphan*/  itv ;

/* Variables and functions */
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct event*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct event*) ; 
 int /*<<< orphan*/  FUNC4 (struct event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct event*) ; 
 int /*<<< orphan*/  FUNC5 (struct itimerval*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct itimerval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  signal_cb ; 
 scalar_t__ test_ok ; 

__attribute__((used)) static void
FUNC7(int find_reorder)
{
	struct event ev;
	struct itimerval itv;

	FUNC4(&ev, SIGALRM, signal_cb, &ev);
	FUNC2(&ev, NULL);
	/* find bugs in which operations are re-ordered */
	if (find_reorder) {
		FUNC3(&ev);
		FUNC2(&ev, NULL);
	}

	FUNC5(&itv, 0, sizeof(itv));
	itv.it_value.tv_sec = 0;
	itv.it_value.tv_usec = 100000;
	if (FUNC6(ITIMER_REAL, &itv, NULL) == -1)
		goto skip_simplesignal;

	FUNC1();
 skip_simplesignal:
	if (FUNC3(&ev) == -1)
		test_ok = 0;

	FUNC0();
}