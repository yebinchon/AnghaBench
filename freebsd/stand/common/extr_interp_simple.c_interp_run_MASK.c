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
 int CMD_ERROR ; 
 int CMD_OK ; 
 char* command_errmsg ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 scalar_t__ FUNC1 (int,char**) ; 
 scalar_t__ FUNC2 (int*,char***,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

int
FUNC4(const char *input)
{
	int			argc;
	char			**argv;

	if (FUNC2(&argc, &argv, input)) {
		FUNC3("parse error\n");
		return CMD_ERROR;
	}

	if (FUNC1(argc, argv)) {
		FUNC3("%s: %s\n", argv[0], command_errmsg);
		FUNC0(argv);
		return CMD_ERROR;
	}
	FUNC0(argv);
	return CMD_OK;
}