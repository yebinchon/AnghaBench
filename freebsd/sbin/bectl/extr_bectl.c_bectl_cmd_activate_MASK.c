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
 int /*<<< orphan*/  be ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(int argc, char *argv[])
{
	int err, opt;
	bool temp;

	temp = false;
	while ((opt = FUNC2(argc, argv, "t")) != -1) {
		switch (opt) {
		case 't':
			temp = true;
			break;
		default:
			FUNC1(stderr, "bectl activate: unknown option '-%c'\n",
			    optopt);
			return (FUNC4(false));
		}
	}

	argc -= optind;
	argv += optind;

	if (argc != 1) {
		FUNC1(stderr, "bectl activate: wrong number of arguments\n");
		return (FUNC4(false));
	}


	/* activate logic goes here */
	if ((err = FUNC0(be, argv[0], temp)) != 0)
		/* XXX TODO: more specific error msg based on err */
		FUNC3("did not successfully activate boot environment %s\n",
		    argv[0]);
	else
		FUNC3("successfully activated boot environment %s\n", argv[0]);

	if (temp)
		FUNC3("for next boot\n");

	return (err);
}