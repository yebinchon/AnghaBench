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
struct nat_list_arg {int cmd; int /*<<< orphan*/  is_all; } ;
struct nat44_cfg_nat {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  ipfw_obj_header ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
#define  IP_FW_NAT44_XGETCONFIG 129 
#define  IP_FW_NAT44_XGETLOG 128 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (struct nat44_cfg_nat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nat44_cfg_nat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct nat44_cfg_nat *cfg, void *arg)
{
	struct nat_list_arg *nla;
	ipfw_obj_header *oh;

	nla = (struct nat_list_arg *)arg;

	switch (nla->cmd) {
	case IP_FW_NAT44_XGETCONFIG:
		if (FUNC1(cfg->name, nla->cmd, &oh) != 0) {
			FUNC5("Error getting nat instance %s info", cfg->name);
			break;
		}
		FUNC2((struct nat44_cfg_nat *)(oh + 1), NULL);
		FUNC0(oh);
		break;
	case IP_FW_NAT44_XGETLOG:
		if (FUNC1(cfg->name, nla->cmd, &oh) == 0) {
			FUNC3((struct nat44_cfg_nat *)(oh + 1), NULL);
			FUNC0(oh);
			break;
		}
		/* Handle error */
		if (nla->is_all != 0 && errno == ENOENT)
			break;
		FUNC4("Error getting nat instance %s info", cfg->name);
		break;
	}

	return (0);
}