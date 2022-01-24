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
 int alwaysno ; 
 int alwaysyes ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int preen ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int skipclean ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(int argc, char **argv)
{
	int ret = 0, erg;
	int ch;

	skipclean = 1;
	while ((ch = FUNC2(argc, argv, "CfFnpy")) != -1) {
		switch (ch) {
		case 'C': /* for fsck_ffs compatibility */
			break;
		case 'f':
			skipclean = 0;
			break;
		case 'F':
			/*
			 * We can never run in the background.  We must exit
			 * silently with a nonzero exit code so that fsck(8)
			 * can probe our support for -F.  The exit code
			 * doesn't really matter, but we use an unusual one
			 * in case someone tries -F directly.  The -F flag
			 * is intentionally left out of the usage message.
			 */
			FUNC1(5);
		case 'n':
			alwaysno = 1;
			alwaysyes = 0;
			break;
		case 'y':
			alwaysyes = 1;
			alwaysno = 0;
			break;

		case 'p':
			preen = 1;
			break;

		default:
			FUNC4();
			break;
		}
	}
	argc -= optind;
	argv += optind;

	if (!argc)
		FUNC4();

	while (--argc >= 0) {
		FUNC3(*argv, preen);
		erg = FUNC0(*argv++);
		if (erg > ret)
			ret = erg;
	}

	return ret;
}