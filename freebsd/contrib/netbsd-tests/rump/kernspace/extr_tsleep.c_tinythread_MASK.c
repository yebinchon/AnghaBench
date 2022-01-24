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
 int EWOULDBLOCK ; 
 int NTHREADS ; 
 int /*<<< orphan*/  PNORELOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (void (*) (void*),int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mymtx ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 void FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void (*) (void*)) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	static int wakeups;
	int i, rv;
	bool relock = ((uintptr_t)arg % 2) == 0;

	for (i = 0; i < 1000; i++) {
		FUNC2(&mymtx);
		FUNC6(tinythread);
		if (wakeups >= NTHREADS-1) {
			FUNC3(&mymtx);
			break;
		}
		rv = FUNC1(tinythread, relock ? 0 : PNORELOCK,
		    "haa", 0, &mymtx);
		if (relock)
			FUNC3(&mymtx);
		if (rv != 0)
			FUNC4("mtsleep failed");
	}

	FUNC2(&mymtx);
	wakeups++;
	FUNC6(tinythread);

	rv = FUNC1(rumptest_tsleep, PNORELOCK, "kepuli", 1, &mymtx);
	if (rv != EWOULDBLOCK)
		FUNC4("mtsleep unexpected return value %d", rv);

	FUNC0(0);
}