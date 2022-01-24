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
 struct cmd* ctbl_rule ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  in_rsnum ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int optreset ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char**) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(int ac, char **av)
{
	struct cmd *c;
	int ch;

	FUNC4("devfs rule");
	optreset = optind = 1;
	while ((ch = FUNC3(ac, av, "s:")) != -1)
		switch (ch) {
		case 's':
			in_rsnum = FUNC0(optarg);
			break;
		default:
			FUNC7();
		}
	ac -= optind;
	av += optind;
	if (ac < 1)
		FUNC7();

	for (c = ctbl_rule; c->name != NULL; ++c)
		if (FUNC5(c->name, av[0]) == 0)
			FUNC2((*c->handler)(ac, av));
	FUNC1(1, "unknown command: %s", av[0]);
}