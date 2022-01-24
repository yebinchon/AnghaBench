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
 char escape ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC3(int argc, char *argv[])
{
	char *arg;
	char buf[50];

	FUNC2(
	    "Deprecated usage - please use 'set escape%s%s' in the future.\n",
				(argc > 2)? " ":"", (argc > 2)? argv[1]: "");
	if (argc > 2)
		arg = argv[1];
	else {
		FUNC2("new escape character: ");
		(void) FUNC1(buf, sizeof(buf), stdin);
		arg = buf;
	}
	if (arg[0] != '\0')
		escape = arg[0];
	(void) FUNC0(stdout);
	return 1;
}