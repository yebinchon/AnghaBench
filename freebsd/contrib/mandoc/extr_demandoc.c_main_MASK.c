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
struct mparse {int dummy; } ;

/* Variables and functions */
 scalar_t__ MANDOCLEVEL_BADARG ; 
 scalar_t__ MANDOCLEVEL_OK ; 
 int /*<<< orphan*/  MANDOC_OS_OTHER ; 
 int MPARSE_LATIN1 ; 
 int MPARSE_SO ; 
 int MPARSE_UTF8 ; 
 int MPARSE_VALIDATE ; 
 int STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (struct mparse*) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct mparse* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mparse*) ; 
 int FUNC6 (struct mparse*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct mparse*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct mparse*,int,char*,int) ; 
 char* progname ; 
 char* FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 () ; 

int
FUNC12(int argc, char *argv[])
{
	struct mparse	*mp;
	int		 ch, fd, i, list;
	extern int	 optind;

	if (argc < 1)
		progname = "demandoc";
	else if ((progname = FUNC10(argv[0], '/')) == NULL)
		progname = argv[0];
	else
		++progname;

	mp = NULL;
	list = 0;

	while (-1 != (ch = FUNC1(argc, argv, "ikm:pw")))
		switch (ch) {
		case ('i'):
			/* FALLTHROUGH */
		case ('k'):
			/* FALLTHROUGH */
		case ('m'):
			/* FALLTHROUGH */
		case ('p'):
			break;
		case ('w'):
			list = 1;
			break;
		default:
			FUNC11();
			return (int)MANDOCLEVEL_BADARG;
		}

	argc -= optind;
	argv += optind;

	FUNC2();
	mp = FUNC4(MPARSE_SO | MPARSE_UTF8 | MPARSE_LATIN1 |
	    MPARSE_VALIDATE, MANDOC_OS_OTHER, NULL);
	FUNC0(mp);

	if (argc < 1)
		FUNC9(mp, STDIN_FILENO, "<stdin>", list);

	for (i = 0; i < argc; i++) {
		FUNC7(mp);
		if ((fd = FUNC6(mp, argv[i])) == -1) {
			FUNC8(argv[i]);
			continue;
		}
		FUNC9(mp, fd, argv[i], list);
	}

	FUNC5(mp);
	FUNC3();
	return (int)MANDOCLEVEL_OK;
}