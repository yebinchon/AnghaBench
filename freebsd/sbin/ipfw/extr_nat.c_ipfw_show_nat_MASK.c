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
struct nat_list_arg {int cmd; int is_all; } ;
struct nat44_cfg_nat {int dummy; } ;
typedef  int /*<<< orphan*/  nla ;
typedef  int /*<<< orphan*/  ipfw_obj_header ;
struct TYPE_2__ {scalar_t__ test_only; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int IP_FW_NAT44_XGETCONFIG ; 
 int IP_FW_NAT44_XGETLOG ; 
 TYPE_1__ co ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nat_list_arg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nat_list_arg*,int) ; 
 scalar_t__ FUNC5 (char*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (struct nat44_cfg_nat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nat_show_data ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 

void
FUNC10(int ac, char **av)
{
	ipfw_obj_header *oh;
	char *name;
	int cmd;
	struct nat_list_arg nla;

	ac--;
	av++;

	if (co.test_only)
		return;

	/* Parse parameters. */
	cmd = 0; /* XXX: Change to IP_FW_NAT44_XGETLOG @ MFC */
	name = NULL;
	for ( ; ac != 0; ac--, av++) {
		if (!FUNC9(av[0], "config", FUNC8(av[0]))) {
			cmd = IP_FW_NAT44_XGETCONFIG;
			continue;
		}
		if (FUNC7(av[0], "log") == 0) {
			cmd = IP_FW_NAT44_XGETLOG;
			continue;
		}
		if (name != NULL)
			FUNC0(EX_USAGE,"only one instance name may be specified");
		name = av[0];
	}

	if (cmd == 0)
		FUNC1(EX_USAGE, "Please specify action. Available: config,log");

	if (name == NULL) {
		FUNC3(&nla, 0, sizeof(nla));
		nla.cmd = cmd;
		nla.is_all = 1;
		FUNC4(nat_show_data, &nla, 1);
	} else {
		if (FUNC5(name, cmd, &oh) != 0)
			FUNC0(EX_OSERR, "Error getting nat %s instance info", name);
		FUNC6((struct nat44_cfg_nat *)(oh + 1), NULL);
		FUNC2(oh);
	}
}