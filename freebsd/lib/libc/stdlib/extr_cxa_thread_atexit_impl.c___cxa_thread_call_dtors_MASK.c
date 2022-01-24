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
 int CXA_DTORS_ITERATIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dtors ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  walk_cb_call ; 
 int /*<<< orphan*/  walk_cb_nocall ; 

void
FUNC4(void)
{
	int i;

	for (i = 0; i < CXA_DTORS_ITERATIONS && !FUNC0(&dtors); i++)
		FUNC2(walk_cb_call);

	if (!FUNC0(&dtors)) {
		FUNC3(stderr, "Thread %d is exiting with more "
		    "thread-specific dtors created after %d iterations "
		    "of destructor calls\n",
		    FUNC1(), i);
		FUNC2(walk_cb_nocall);
	}
}