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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  void* uint16_t ;
struct format_opts {int set; int new_set; scalar_t__ start_rule; void* end_rule; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  rt ;
typedef  struct format_opts ipfw_range_tlv ;
struct TYPE_4__ {int set_mask; } ;
typedef  TYPE_1__ ipfw_cfg_lheader ;
typedef  int /*<<< orphan*/  fo ;

/* Variables and functions */
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 scalar_t__ IPFW_DEFAULT_RULE ; 
 int /*<<< orphan*/  IPFW_RCFLAG_RANGE ; 
 int IP_FW_SET_ENABLE ; 
 int IP_FW_SET_MOVE ; 
 int IP_FW_SET_SWAP ; 
 int IP_FW_XMOVE ; 
 int RESVD_SET ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  co ; 
 int FUNC2 (int,struct format_opts*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct format_opts*,TYPE_1__**,size_t*) ; 
 scalar_t__ FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (struct format_opts*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

void
FUNC11(char *av[])
{
	ipfw_range_tlv rt;
	char *msg;
	size_t size;
	uint32_t masks[2];
	int i;
	uint16_t rulenum;
	uint8_t cmd;

	av++;
	FUNC8(&rt, 0, sizeof(rt));

	if (av[0] == NULL)
		FUNC4(EX_USAGE, "set needs command");
	if (FUNC0(*av, "show") == 0) {
		struct format_opts fo;
		ipfw_cfg_lheader *cfg;

		FUNC8(&fo, 0, sizeof(fo));
		if (FUNC6(&co, &fo, &cfg, &size) != 0)
			FUNC3(EX_OSERR, "requesting config failed");

		for (i = 0, msg = "disable"; i < RESVD_SET; i++)
			if ((cfg->set_mask & (1<<i)) == 0) {
				FUNC9("%s %d", msg, i);
				msg = "";
			}
		msg = (cfg->set_mask != (uint32_t)-1) ? " enable" : "enable";
		for (i = 0; i < RESVD_SET; i++)
			if ((cfg->set_mask & (1<<i)) != 0) {
				FUNC9("%s %d", msg, i);
				msg = "";
			}
		FUNC9("\n");
		FUNC5(cfg);
	} else if (FUNC0(*av, "swap") == 0) {
		av++;
		if ( av[0] == NULL || av[1] == NULL )
			FUNC4(EX_USAGE, "set swap needs 2 set numbers\n");
		rt.set = FUNC1(av[0]);
		rt.new_set = FUNC1(av[1]);
		if (!FUNC7(*(av[0])) || rt.set > RESVD_SET)
			FUNC4(EX_DATAERR, "invalid set number %s\n", av[0]);
		if (!FUNC7(*(av[1])) || rt.new_set > RESVD_SET)
			FUNC4(EX_DATAERR, "invalid set number %s\n", av[1]);
		i = FUNC2(IP_FW_SET_SWAP, &rt);
	} else if (FUNC0(*av, "move") == 0) {
		av++;
		if (av[0] && FUNC0(*av, "rule") == 0) {
			rt.flags = IPFW_RCFLAG_RANGE; /* move rules to new set */
			cmd = IP_FW_XMOVE;
			av++;
		} else
			cmd = IP_FW_SET_MOVE; /* Move set to new one */
		if (av[0] == NULL || av[1] == NULL || av[2] == NULL ||
				av[3] != NULL ||  FUNC0(av[1], "to") != 0)
			FUNC4(EX_USAGE, "syntax: set move [rule] X to Y\n");
		rulenum = FUNC1(av[0]);
		rt.new_set = FUNC1(av[2]);
		if (cmd == IP_FW_XMOVE) {
			rt.start_rule = rulenum;
			rt.end_rule = rulenum;
		} else
			rt.set = rulenum;
		rt.new_set = FUNC1(av[2]);
		if (!FUNC7(*(av[0])) || (cmd == 3 && rt.set > RESVD_SET) ||
			(cmd == 2 && rt.start_rule == IPFW_DEFAULT_RULE) )
			FUNC4(EX_DATAERR, "invalid source number %s\n", av[0]);
		if (!FUNC7(*(av[2])) || rt.new_set > RESVD_SET)
			FUNC4(EX_DATAERR, "invalid dest. set %s\n", av[1]);
		i = FUNC2(cmd, &rt);
		if (i < 0)
			FUNC3(EX_OSERR, "failed to move %s",
			    cmd == IP_FW_SET_MOVE ? "set": "rule");
	} else if (FUNC0(*av, "disable") == 0 ||
		   FUNC0(*av, "enable") == 0 ) {
		int which = FUNC0(*av, "enable") == 0 ? 1 : 0;

		av++;
		masks[0] = masks[1] = 0;

		while (av[0]) {
			if (FUNC7(**av)) {
				i = FUNC1(*av);
				if (i < 0 || i > RESVD_SET)
					FUNC4(EX_DATAERR,
					    "invalid set number %d\n", i);
				masks[which] |= (1<<i);
			} else if (FUNC0(*av, "disable") == 0)
				which = 0;
			else if (FUNC0(*av, "enable") == 0)
				which = 1;
			else
				FUNC4(EX_DATAERR,
					"invalid set command %s\n", *av);
			av++;
		}
		if ( (masks[0] & masks[1]) != 0 )
			FUNC4(EX_DATAERR,
			    "cannot enable and disable the same set\n");

		rt.set = masks[0];
		rt.new_set = masks[1];
		i = FUNC2(IP_FW_SET_ENABLE, &rt);
		if (i)
			FUNC10("set enable/disable: setsockopt(IP_FW_SET_ENABLE)");
	} else
		FUNC4(EX_USAGE, "invalid set command %s\n", *av);
}