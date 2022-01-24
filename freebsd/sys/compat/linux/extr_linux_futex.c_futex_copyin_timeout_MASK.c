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
struct timespec {int dummy; } ;
struct l_timespec {int dummy; } ;
typedef  int /*<<< orphan*/  lts ;

/* Variables and functions */
 int LINUX_FUTEX_WAIT_BITSET ; 
 int FUNC0 (struct l_timespec*,struct l_timespec*,int) ; 
 int FUNC1 (struct timespec*,struct l_timespec*) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC4 (struct timespec*,struct timespec*,struct timespec*) ; 

__attribute__((used)) static int
FUNC5(int op, struct l_timespec *luts, int clockrt,
    struct timespec *ts)
{
	struct l_timespec lts;
	struct timespec kts;
	int error;

	error = FUNC0(luts, &lts, sizeof(lts));
	if (error)
		return (error);

	error = FUNC1(ts, &lts);
	if (error)
		return (error);
	if (clockrt) {
		FUNC2(&kts);
		FUNC4(ts, &kts, ts);
	} else if (op == LINUX_FUTEX_WAIT_BITSET) {
		FUNC3(&kts);
		FUNC4(ts, &kts, ts);
	}
	return (error);
}