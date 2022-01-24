#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xi ;
struct TYPE_4__ {int /*<<< orphan*/  mflags; int /*<<< orphan*/  limit; } ;
typedef  TYPE_1__ ipfw_xtable_info ;
typedef  int /*<<< orphan*/  ipfw_obj_header ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  IPFW_TMFLAGS_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  TOK_LIMIT 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  tablenewcmds ; 

__attribute__((used)) static void
FUNC7(ipfw_obj_header *oh, int ac, char *av[])
{
	ipfw_xtable_info xi;
	int tcmd;

	FUNC4(&xi, 0, sizeof(xi));

	while (ac > 0) {
		tcmd = FUNC3(tablenewcmds, *av, "option");
		ac--; av++;

		switch (tcmd) {
		case TOK_LIMIT:
			FUNC0("limit value required");
			xi.limit = FUNC5(*av, NULL, 10);
			xi.mflags |= IPFW_TMFLAGS_LIMIT;
			ac--; av++;
			break;
		default:
			FUNC2(EX_USAGE, "cmd is not supported for modification");
		}
	}

	if (FUNC6(oh, &xi) != 0)
		FUNC1(EX_OSERR, "Table modification failed");
}