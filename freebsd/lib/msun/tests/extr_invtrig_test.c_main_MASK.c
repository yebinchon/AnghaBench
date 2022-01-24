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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(void)
{

#if defined(__i386__)
	printf("1..0 # SKIP fails all assertions on i386\n");
	return (0);
#endif

	FUNC0("1..7\n");

	FUNC5();
	FUNC0("ok 1 - special\n");

	FUNC6();
	FUNC0("ok 2 - atan2 special\n");

	FUNC1();
	FUNC0("ok 3 - accuracy\n");

	FUNC4();
	FUNC0("ok 4 - atan2 p2x\n");

	FUNC7();
	FUNC0("ok 5 - tiny inputs\n");

	FUNC2();
	FUNC0("ok 6 - atan huge inputs\n");

	FUNC3();
	FUNC0("ok 7 - inverse\n");

	return (0);
}