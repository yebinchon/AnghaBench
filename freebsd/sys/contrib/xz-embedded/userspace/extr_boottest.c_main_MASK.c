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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(int argc, char **argv)
{
	if (argc != 2)
		FUNC0(stderr, "Usage: %s [bb|bc|cc|cb]\n", argv[0]);
	else if (FUNC1(argv[1], "bb") == 0)
		FUNC2();
	else if (FUNC1(argv[1], "bc") == 0)
		FUNC3();
	else if (FUNC1(argv[1], "cc") == 0)
		FUNC5();
	else if (FUNC1(argv[1], "cb") == 0)
		FUNC4();
	else
		FUNC0(stderr, "Usage: %s [bb|bc|cc|cb]\n", argv[0]);

	return 0;
}