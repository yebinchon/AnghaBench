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
struct rtnl_link {int dummy; } ;
struct nl_sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  NETLINK_ROUTE ; 
 int FUNC0 (struct nl_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct nl_sock* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct nl_sock*) ; 
 int FUNC4 (struct nl_sock*,struct rtnl_link*) ; 
 int FUNC5 (struct nl_sock*,int /*<<< orphan*/ ,char const*,struct rtnl_link**) ; 
 int /*<<< orphan*/  FUNC6 (struct rtnl_link*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC8(const char *if_name)
{
	int err, ret = -1;
	struct nl_sock *handle = NULL;
	struct rtnl_link *rlink = NULL;

	FUNC7(MSG_DEBUG, "VLAN: vlan_rem(if_name=%s)", if_name);

	handle = FUNC2();
	if (!handle) {
		FUNC7(MSG_ERROR, "VLAN: failed to open netlink socket");
		goto vlan_rem_error;
	}

	err = FUNC0(handle, NETLINK_ROUTE);
	if (err < 0) {
		FUNC7(MSG_ERROR, "VLAN: failed to connect to netlink: %s",
			   FUNC1(err));
		goto vlan_rem_error;
	}

	err = FUNC5(handle, 0, if_name, &rlink);
	if (err < 0) {
		/* link does not exist */
		FUNC7(MSG_ERROR, "VLAN: interface %s does not exists",
			   if_name);
		goto vlan_rem_error;
	}

	err = FUNC4(handle, rlink);
	if (err < 0) {
		FUNC7(MSG_ERROR, "VLAN: failed to remove link %s: %s",
			   if_name, FUNC1(err));
		goto vlan_rem_error;
	}

	ret = 0;

vlan_rem_error:
	if (rlink)
		FUNC6(rlink);
	if (handle)
		FUNC3(handle);
	return ret;
}