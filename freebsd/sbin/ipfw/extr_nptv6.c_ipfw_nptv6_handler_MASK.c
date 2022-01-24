#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ use_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  TOK_CREATE 131 
#define  TOK_DESTROY 130 
#define  TOK_LIST 129 
 int TOK_RESET ; 
#define  TOK_STATS 128 
 TYPE_1__ co ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,scalar_t__,int,char**) ; 
 int /*<<< orphan*/  FUNC5 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  nptv6_destroy_cb ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  nptv6_show_cb ; 
 int /*<<< orphan*/  FUNC8 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  nptv6cmds ; 
 int /*<<< orphan*/  nptv6statscmds ; 
 scalar_t__ FUNC9 (char const*,char*) ; 

void
FUNC10(int ac, char *av[])
{
	const char *name;
	int tcmd;
	uint8_t set;

	if (co.use_set != 0)
		set = co.use_set - 1;
	else
		set = 0;
	ac--; av++;

	FUNC0("nptv6 needs instance name");
	name = *av;
	if (FUNC3(name) != 0) {
		if (FUNC9(name, "all") == 0) {
			name = NULL;
		} else
			FUNC1(EX_USAGE, "nptv6 instance name %s is invalid",
			    name);
	}
	ac--; av++;
	FUNC0("nptv6 needs command");

	tcmd = FUNC2(nptv6cmds, *av, "nptv6 command");
	if (name == NULL && tcmd != TOK_DESTROY && tcmd != TOK_LIST)
		FUNC1(EX_USAGE, "nptv6 instance name required");
	switch (tcmd) {
	case TOK_CREATE:
		ac--; av++;
		FUNC4(name, set, ac, av);
		break;
	case TOK_LIST:
		FUNC6(nptv6_show_cb, name, set, 1);
		break;
	case TOK_DESTROY:
		if (name == NULL)
			FUNC6(nptv6_destroy_cb, NULL, set, 0);
		else
			FUNC5(name, set);
		break;
	case TOK_STATS:
		ac--; av++;
		if (ac == 0) {
			FUNC8(name, set);
			break;
		}
		tcmd = FUNC2(nptv6statscmds, *av, "stats command");
		if (tcmd == TOK_RESET)
			FUNC7(name, set);
	}
}