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
 int EX_USAGE ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  be ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(int argc, char *argv[])
{
	char *bootenv;

	if (argc == 1) {
		FUNC1(stderr, "bectl export: missing boot environment name\n");
		return (FUNC3(false));
	}

	if (argc > 2) {
		FUNC1(stderr, "bectl export: extra arguments provided\n");
		return (FUNC3(false));
	}

	bootenv = argv[1];

	if (FUNC2(STDOUT_FILENO)) {
		FUNC1(stderr, "bectl export: must redirect output\n");
		return (EX_USAGE);
	}

	FUNC0(be, bootenv, STDOUT_FILENO);

	return (0);
}