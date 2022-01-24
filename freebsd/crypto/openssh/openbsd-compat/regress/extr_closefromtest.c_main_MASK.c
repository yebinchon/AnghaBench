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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int NUM_OPENS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char*,int) ; 

int
FUNC6(void)
{
	int i, max, fds[NUM_OPENS];
	char buf[512];

	for (i = 0; i < NUM_OPENS; i++)
		if ((fds[i] = FUNC4("/dev/null", O_RDONLY)) == -1)
			FUNC2(0);	/* can't test */
	max = i - 1;

	/* should close last fd only */
	FUNC1(fds[max]);
	if (FUNC0(fds[max]) != -1)
		FUNC3("failed to close highest fd");

	/* make sure we can still use remaining descriptors */
	for (i = 0; i < max; i++)
		if (FUNC5(fds[i], buf, sizeof(buf)) == -1)
			FUNC3("closed descriptors it should not have");

	/* should close all fds */
	FUNC1(fds[0]);
	for (i = 0; i < NUM_OPENS; i++)
		if (FUNC0(fds[i]) != -1)
			FUNC3("failed to close from lowest fd");
	return 0;
}