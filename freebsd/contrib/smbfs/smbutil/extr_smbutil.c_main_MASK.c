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
struct commands {int flags; int (* fn ) (int,char**) ;} ;

/* Variables and functions */
 int CMDFL_NO_KMOD ; 
 int EOF ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct commands* FUNC4 (char*) ; 
 int optind ; 
 int optreset ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (int,char**) ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

int
FUNC8(int argc, char *argv[])
{
	struct commands *cmd;
	char *cp;
	int opt;
#ifdef APPLE
        extern void dropsuid();

	dropsuid();
#endif /* APPLE */

	if (argc < 2)
		FUNC3();

	while ((opt = FUNC2(argc, argv, "hv")) != EOF) {
		switch (opt) {
		    case 'h':
			FUNC3();
			/*NOTREACHED */
		    case 'v':
			verbose = 1;
			break;
		    default:
			FUNC7("invalid option %c", opt);
			FUNC3();
			/*NOTREACHED */
		}
	}
	if (optind >= argc)
		FUNC3();

	cp = argv[optind];
	cmd = FUNC4(cp);
	if (cmd == NULL)
		FUNC0(EX_DATAERR, "unknown command %s", cp);

	if ((cmd->flags & CMDFL_NO_KMOD) == 0 && FUNC5() != 0)
		FUNC1(1);

	argc -= optind;
	argv += optind;
	optind = optreset = 1;
	return cmd->fn(argc, argv);
}