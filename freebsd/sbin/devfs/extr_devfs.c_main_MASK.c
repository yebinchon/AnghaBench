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
struct cmd {int /*<<< orphan*/  (* handler ) (int,char**) ;int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 char* _PATH_DEV ; 
 struct cmd* ctbl_main ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char**,char*) ; 
 int mpfd ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char**) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(int ac, char **av)
{
	const char *mountpt;
	struct cmd *c;
	int ch;

	mountpt = NULL;
	while ((ch = FUNC3(ac, av, "m:")) != -1)
		switch (ch) {
		case 'm':
			mountpt = optarg;
			break;
		default:
			FUNC7();
		}
	ac -= optind;
	av += optind;
	if (ac < 1)
		FUNC7();

	if (mountpt == NULL)
		mountpt = _PATH_DEV;
	mpfd = FUNC4(mountpt, O_RDONLY);
	if (mpfd == -1)
		FUNC0(1, "open: %s", mountpt);

	for (c = ctbl_main; c->name != NULL; ++c)
		if (FUNC5(c->name, av[0]) == 0)
			FUNC2((*c->handler)(ac, av));
	FUNC1(1, "unknown command: %s", av[0]);
}