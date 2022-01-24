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
 int SmTestIndex ; 
 int SmTestNumErrors ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC1()
{
	(void) FUNC0(stderr, "%d of %d tests completed successfully\n",
			SmTestIndex - SmTestNumErrors, SmTestIndex);
	if (SmTestNumErrors != 0)
		(void) FUNC0(stderr, "*** %d error%s in test! ***\n",
				SmTestNumErrors,
				SmTestNumErrors > 1 ? "s" : "");

	return SmTestNumErrors;
}