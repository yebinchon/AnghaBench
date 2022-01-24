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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  static_cond ; 
 int /*<<< orphan*/  static_mutex ; 

__attribute__((used)) static void *
FUNC5(void *arg)
{
	int *shared = (int *) arg;

	FUNC1("2: Second thread.\n");

	FUNC1("2: Locking mutex\n");
	FUNC0(FUNC3(&static_mutex));
	FUNC1("2: Got mutex.\n");
	FUNC1("Shared value: %d. Changing to 0.\n", *shared);
	*shared = 0;

	/* Signal first, then unlock, for a different test than #1. */
	FUNC0(FUNC2(&static_cond));
	FUNC0(FUNC4(&static_mutex));

	return NULL;
}