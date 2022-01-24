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
#define  TOK_CONFIG 132 
#define  TOK_CREATE 131 
#define  TOK_DESTROY 130 
#define  TOK_LIST 129 
#define  TOK_STATS 128 
 TYPE_1__ co ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,scalar_t__,int,char**) ; 
 int /*<<< orphan*/  FUNC4 (char const*,scalar_t__,int,char**) ; 
 int /*<<< orphan*/  nat64cmds ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,scalar_t__,int,char**) ; 
 int /*<<< orphan*/  FUNC7 (char const*,scalar_t__,int,char**) ; 
 int /*<<< orphan*/  FUNC8 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  nat64lsn_destroy_cb ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 

void
FUNC11(int ac, char *av[])
{
	const char *name;
	int tcmd;
	uint8_t set;

	if (co.use_set != 0)
		set = co.use_set - 1;
	else
		set = 0;
	ac--; av++;

	FUNC0("nat64lsn needs instance name");
	name = *av;
	if (FUNC5(name) != 0) {
		if (FUNC10(name, "all") == 0)
			name = NULL;
		else
			FUNC1(EX_USAGE, "nat64lsn instance name %s is invalid",
			    name);
	}
	ac--; av++;
	FUNC0("nat64lsn needs command");

	tcmd = FUNC2(nat64cmds, *av, "nat64lsn command");
	if (name == NULL && tcmd != TOK_DESTROY && tcmd != TOK_LIST)
		FUNC1(EX_USAGE, "nat64lsn instance name required");
	switch (tcmd) {
	case TOK_CREATE:
		ac--; av++;
		FUNC7(name, set, ac, av);
		break;
	case TOK_CONFIG:
		ac--; av++;
		FUNC6(name, set, ac, av);
		break;
	case TOK_LIST:
		ac--; av++;
		FUNC3(name, set, ac, av);
		break;
	case TOK_DESTROY:
		if (name == NULL)
			FUNC9(nat64lsn_destroy_cb, NULL, set, 0);
		else
			FUNC8(name, set);
		break;
	case TOK_STATS:
		ac--; av++;
		FUNC4(name, set, ac, av);
	}
}