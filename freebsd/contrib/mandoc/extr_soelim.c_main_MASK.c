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
 int C_OPTION ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/ * includes ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(int argc, char **argv)
{
	int ch, i;
	int ret = 0;
	int flags = 0;

	includes = FUNC4();
	if (includes == NULL)
		FUNC0(EXIT_FAILURE, "sl_init()");

	while ((ch = FUNC1(argc, argv, "CrtvI:")) != -1) {
		switch (ch) {
		case 'C':
			flags |= C_OPTION;
			break;
		case 'r':
		case 'v':
		case 't':
			/* stub compatibility with groff's soelim */
			break;
		case 'I':
			FUNC2(includes, optarg);
			break;
		default:
			FUNC3(includes, 0);
			FUNC7();
		}
	}

	argc -= optind;
	argv += optind;

	if (argc == 0)
		ret = FUNC5(stdin, flags);

	for (i = 0; i < argc; i++)
		ret = FUNC5(FUNC6(argv[i]), flags);

	FUNC3(includes, 0);

	return (ret);
}