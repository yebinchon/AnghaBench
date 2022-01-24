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
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*,char*) ; 

int
FUNC5(int argc, char *argv[])
{
	if (argc < 2)
		FUNC1();

	if (FUNC4(argv[1], "total") == 0) {
		FUNC3();
	} else if (FUNC4(argv[1], "list") == 0) {
		if (argc == 2)
			FUNC2(0);
		else if (argc == 3)
			FUNC2(FUNC0(argv[2]));
		else
			FUNC1();
	} else
		FUNC1();

	return EXIT_SUCCESS;
}