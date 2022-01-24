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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int VIS_CSTYLE ; 
 int VIS_HTTPSTYLE ; 
 int VIS_MIMESTYLE ; 
 int VIS_NOSLASH ; 
 int VIS_OCTAL ; 
 int VIS_SAFE ; 
 int VIS_TAB ; 
 int VIS_WHITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int eflags ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  extra ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fold ; 
 int foldwidth ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC5 (int,char**,char*) ; 
 char* FUNC6 () ; 
 int /*<<< orphan*/  markeol ; 
 int /*<<< orphan*/  none ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

int
FUNC9(int argc, char *argv[])
{
	FILE *fp;
	int ch;
	int rval;

	while ((ch = FUNC5(argc, argv, "bcde:F:fhlmnostw")) != -1)
		switch((char)ch) {
		case 'b':
			eflags |= VIS_NOSLASH;
			break;
		case 'c':
			eflags |= VIS_CSTYLE;
			break;
#ifdef DEBUG
		case 'd':
			debug++;
			break;
#endif
		case 'e':
			extra = optarg;
			break;
		case 'F':
			if ((foldwidth = FUNC0(optarg)) < 5) {
				FUNC1(1, "can't fold lines to less than 5 cols");
				/* NOTREACHED */
			}
			markeol++;
			break;
		case 'f':
			fold++;		/* fold output lines to 80 cols */
			break;		/* using hidden newline */
		case 'h':
			eflags |= VIS_HTTPSTYLE;
			break;
		case 'l':
			markeol++;	/* mark end of line with \$ */
			break;
		case 'm':
			eflags |= VIS_MIMESTYLE;
			if (foldwidth == 80)
				foldwidth = 76;
			break;
		case 'n':
			none++;
			break;
		case 'o':
			eflags |= VIS_OCTAL;
			break;
		case 's':
			eflags |= VIS_SAFE;
			break;
		case 't':
			eflags |= VIS_TAB;
			break;
		case 'w':
			eflags |= VIS_WHITE;
			break;
		case '?':
		default:
			(void)FUNC4(stderr, 
			    "Usage: %s [-bcfhlmnostw] [-e extra]" 
			    " [-F foldwidth] [file ...]\n", FUNC6());
			return 1;
		}

	if ((eflags & (VIS_HTTPSTYLE|VIS_MIMESTYLE)) ==
	    (VIS_HTTPSTYLE|VIS_MIMESTYLE))
		FUNC1(1, "Can't specify -m and -h at the same time");

	argc -= optind;
	argv += optind;

	rval = 0;

	if (*argv)
		while (*argv) {
			if ((fp = FUNC3(*argv, "r")) != NULL) {
				FUNC7(fp);
				(void)FUNC2(fp);
			} else {
				FUNC8("%s", *argv);
				rval = 1;
			}
			argv++;
		}
	else
		FUNC7(stdin);
	return rval;
}