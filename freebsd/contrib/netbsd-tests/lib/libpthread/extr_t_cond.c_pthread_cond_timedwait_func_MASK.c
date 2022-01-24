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
struct timespec {scalar_t__ tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  static_cond ; 
 int /*<<< orphan*/  static_mutex ; 

__attribute__((used)) static void *
FUNC8(void *arg)
{
	struct timespec ts;
	size_t i = 0;
	int rv;

	for (;;) {

		if (i++ >= 10000)
			FUNC5(NULL);

		(void)FUNC3(&ts, 0, sizeof(struct timespec));

		FUNC0(FUNC2(CLOCK_REALTIME, &ts) == 0);

		/*
		 * Set to one second in the past:
		 * pthread_cond_timedwait(3) should
		 * return ETIMEDOUT immediately.
		 */
		ts.tv_sec = ts.tv_sec - 1;

		FUNC1(FUNC6(&static_mutex));
		rv = FUNC4(&static_cond, &static_mutex, &ts);

		/*
		 * Sometimes we catch ESRCH.
		 * This should never happen.
		 */
		FUNC0(rv == ETIMEDOUT);
		FUNC1(FUNC7(&static_mutex));
	}
}