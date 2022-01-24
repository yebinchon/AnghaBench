#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rt ;
struct TYPE_5__ {int set; int start_rule; int end_rule; scalar_t__ new_set; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ ipfw_range_tlv ;
struct TYPE_6__ {int use_set; int do_dynamic; scalar_t__ do_force; scalar_t__ do_quiet; scalar_t__ do_pipe; scalar_t__ do_nat; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_DATAERR ; 
 int EX_OK ; 
 int EX_UNAVAILABLE ; 
 int /*<<< orphan*/  IPFW_RCFLAG_ALL ; 
 int /*<<< orphan*/  IPFW_RCFLAG_DYNAMIC ; 
 int /*<<< orphan*/  IPFW_RCFLAG_RANGE ; 
 int /*<<< orphan*/  IPFW_RCFLAG_SET ; 
 int /*<<< orphan*/  IP_FW_NAT_DEL ; 
 int /*<<< orphan*/  IP_FW_XDEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 TYPE_4__ co ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,...) ; 

void
FUNC12(char *av[])
{
	ipfw_range_tlv rt;
	char *sep;
	int i, j;
	int exitval = EX_OK;
	int do_set = 0;

	av++;
	FUNC0("missing rule specification");
	if ( *av && FUNC1(*av, "set") == 0) {
		/* Do not allow using the following syntax:
		 *	ipfw set N delete set M
		 */
		if (co.use_set)
			FUNC4(EX_DATAERR, "invalid syntax");
		do_set = 1;	/* delete set */
		av++;
	}

	/* Rule number */
	while (*av && FUNC7(**av)) {
		i = FUNC9(*av, &sep, 10);
		j = i;
		if (*sep== '-')
			j = FUNC9(sep + 1, NULL, 10);
		av++;
		if (co.do_nat) {
			exitval = FUNC2(IP_FW_NAT_DEL, &i, sizeof i);
			if (exitval) {
				exitval = EX_UNAVAILABLE;
				if (co.do_quiet)
					continue;
				FUNC10("nat %u not available", i);
			}
		} else if (co.do_pipe) {
			exitval = FUNC6(co.do_pipe, i);
		} else {
			FUNC8(&rt, 0, sizeof(rt));
			if (do_set != 0) {
				rt.set = i & 31;
				rt.flags = IPFW_RCFLAG_SET;
			} else {
				rt.start_rule = i & 0xffff;
				rt.end_rule = j & 0xffff;
				if (rt.start_rule == 0 && rt.end_rule == 0)
					rt.flags |= IPFW_RCFLAG_ALL;
				else
					rt.flags |= IPFW_RCFLAG_RANGE;
				if (co.use_set != 0) {
					rt.set = co.use_set - 1;
					rt.flags |= IPFW_RCFLAG_SET;
				}
			}
			if (co.do_dynamic == 2)
				rt.flags |= IPFW_RCFLAG_DYNAMIC;
			i = FUNC3(IP_FW_XDEL, &rt);
			if (i != 0) {
				exitval = EX_UNAVAILABLE;
				if (co.do_quiet)
					continue;
				FUNC10("rule %u: setsockopt(IP_FW_XDEL)",
				    rt.start_rule);
			} else if (rt.new_set == 0 && do_set == 0 &&
			    co.do_dynamic != 2) {
				exitval = EX_UNAVAILABLE;
				if (co.do_quiet)
					continue;
				if (rt.start_rule != rt.end_rule)
					FUNC11("no rules rules in %u-%u range",
					    rt.start_rule, rt.end_rule);
				else
					FUNC11("rule %u not found",
					    rt.start_rule);
			}
		}
	}
	if (exitval != EX_OK && co.do_force == 0)
		FUNC5(exitval);
}