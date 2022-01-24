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
struct timespec {int tv_sec; int tv_nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*,struct timespec*) ; 

void
FUNC3(struct timespec *tsa, struct timespec *tsc, unsigned sa, unsigned sc)
{
	static int idx;
	struct timespec ts;

	FUNC1("%d.%09d ", tsa->tv_sec, tsa->tv_nsec);
	FUNC1("%d.%09d ", tsc->tv_sec, tsc->tv_nsec);
	FUNC1("%u %u ", sa, sc);

	ts = *tsc;
	FUNC2(&ts,tsa);
	FUNC1("%.9f ", ts.tv_sec + ts.tv_nsec / 1e9);
	FUNC1("\n");
	FUNC0(stdout);
}