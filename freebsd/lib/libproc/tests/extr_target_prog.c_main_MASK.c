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
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int saw ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  usr1 ; 

int
FUNC6(int argc, char **argv)
{

	FUNC0(); /* force the symbol to be emitted */

	if (argc == 1)
		return (EXIT_SUCCESS);
	if (argc == 2 && FUNC5(argv[1], "-s") == 0) {
		if (FUNC4(SIGUSR1, usr1) == SIG_ERR)
			FUNC1(1, "signal");
		if (FUNC3(FUNC2(), SIGUSR1) != 0)
			FUNC1(1, "kill");
		return (saw == 1 ? EXIT_SUCCESS : EXIT_FAILURE);
	}
	return (EXIT_FAILURE);
}