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
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  TOK_IFLIST 131 
#define  TOK_OLIST 130 
#define  TOK_TALIST 129 
#define  TOK_VLIST 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  intcmds ; 
 int /*<<< orphan*/  FUNC2 (int,char**) ; 
 int /*<<< orphan*/  FUNC3 (int,char**) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char**) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*) ; 

void
FUNC7(int ac, char *av[])
{
	int tcmd;

	ac--; av++;
	FUNC0("internal cmd required");

	if ((tcmd = FUNC6(intcmds, *av)) == -1)
		FUNC1(EX_USAGE, "invalid internal sub-cmd: %s", *av);

	switch (tcmd) {
	case TOK_IFLIST:
		FUNC4();
		break;
	case TOK_TALIST:
		FUNC3(ac, av);
		break;
	case TOK_OLIST:
		FUNC2(ac, av);
		break;
	case TOK_VLIST:
		FUNC5(ac, av);
		break;
	}
}