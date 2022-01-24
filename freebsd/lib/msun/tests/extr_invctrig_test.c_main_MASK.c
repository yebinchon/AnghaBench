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

int
FUNC7(void)
{

	FUNC0("1..6\n");

	FUNC6();
	FUNC0("ok 1 - invctrig zero\n");

	FUNC4();
	FUNC0("ok 2 - invctrig nan\n");

	FUNC2();
	FUNC0("ok 3 - invctrig inf\n");

	FUNC1();
	FUNC0("ok 4 - invctrig axes\n");

	FUNC5();
	FUNC0("ok 5 - invctrig small\n");

	FUNC3();
	FUNC0("ok 6 - invctrig large\n");

	return (0);
}