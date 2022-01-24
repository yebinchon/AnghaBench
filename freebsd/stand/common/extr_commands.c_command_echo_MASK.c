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
 int CMD_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,char**,char*) ; 
 int optind ; 
 int optreset ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* FUNC3 (int,char**) ; 

__attribute__((used)) static int
FUNC4(int argc, char *argv[])
{
	char	*s;
	int	nl, ch;

	nl = 0;
	optind = 1;
	optreset = 1;
	while ((ch = FUNC1(argc, argv, "n")) != -1) {
		switch (ch) {
		case 'n':
			nl = 1;
			break;
		case '?':
		default:
			/* getopt has already reported an error */
			return (CMD_OK);
		}
	}
	argv += (optind);
	argc -= (optind);

	s = FUNC3(argc, argv);
	if (s != NULL) {
		FUNC2("%s", s);
		FUNC0(s);
	}
	if (!nl)
		FUNC2("\n");
	return (CMD_OK);
}