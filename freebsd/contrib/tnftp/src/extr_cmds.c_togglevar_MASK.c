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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 char* FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  ttyout ; 

int
FUNC4(int argc, char *argv[], int *var, const char *mesg)
{
	if (argc == 1) {
		*var = !*var;
	} else if (argc == 2 && FUNC3(argv[1], "on") == 0) {
		*var = 1;
	} else if (argc == 2 && FUNC3(argv[1], "off") == 0) {
		*var = 0;
	} else {
		FUNC0("usage: %s [ on | off ]\n", argv[0]);
		return (-1);
	}
	if (mesg)
		FUNC1(ttyout, "%s %s.\n", mesg, FUNC2(*var));
	return (*var);
}