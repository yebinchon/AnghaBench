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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 char* FUNC0 (char) ; 
 char escape ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC4(int argc, char *argv[])
{
	char *arg;
	char buf[50];

	FUNC3(
	    "Deprecated usage - please use 'set escape%s%s' in the future.\r\n",
				(argc > 2)? " ":"", (argc > 2)? argv[1]: "");
	if (argc > 2)
		arg = argv[1];
	else {
		FUNC3("new escape character: ");
		FUNC2(buf, sizeof(buf), stdin);
		arg = buf;
	}
	if (arg[0] != '\0')
		escape = arg[0];
	FUNC3("Escape character is '%s'.\r\n", FUNC0(escape));

	FUNC1(stdout);
	return 1;
}