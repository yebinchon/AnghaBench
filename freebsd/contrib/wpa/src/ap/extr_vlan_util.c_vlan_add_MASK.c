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
 scalar_t__ IFNAMSIZ ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  NETLINK_ROUTE ; 
 int /*<<< orphan*/  NLM_F_CREATE ; 
 int FUNC0 (struct nl_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct nl_sock* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct nl_sock*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int FUNC5 (struct nl_sock*,struct rtnl_link*,int /*<<< orphan*/ ) ; 
 struct rtnl_link* FUNC6 () ; 
 int FUNC7 (struct rtnl_link*) ; 
 int FUNC8 (struct nl_sock*,int /*<<< orphan*/ ,char const*,struct rtnl_link**) ; 
 int /*<<< orphan*/  FUNC9 (struct rtnl_link*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtnl_link*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct rtnl_link*,char const*) ; 
 int FUNC12 (struct rtnl_link*,char*) ; 
 int FUNC13 (struct rtnl_link*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC15(const char *if_name, int vid, const char *vlan_if_name)
{
	int err, ret = -1;
	struct nl_sock *handle = NULL;
	struct rtnl_link *rlink = NULL;
	int if_idx = 0;

	FUNC14(MSG_DEBUG, "VLAN: vlan_add(if_name=%s, vid=%d, "
		   "vlan_if_name=%s)", if_name, vid, vlan_if_name);

	if ((FUNC4(if_name) + 1) > IFNAMSIZ) {
		FUNC14(MSG_ERROR, "VLAN: Interface name too long: '%s'",
			   if_name);
		return -1;
	}

	if ((FUNC4(vlan_if_name) + 1) > IFNAMSIZ) {
		FUNC14(MSG_ERROR, "VLAN: Interface name too long: '%s'",
			   vlan_if_name);
		return -1;
	}

	handle = FUNC2();
	if (!handle) {
		FUNC14(MSG_ERROR, "VLAN: failed to open netlink socket");
		goto vlan_add_error;
	}

	err = FUNC0(handle, NETLINK_ROUTE);
	if (err < 0) {
		FUNC14(MSG_ERROR, "VLAN: failed to connect to netlink: %s",
			   FUNC1(err));
		goto vlan_add_error;
	}

	err = FUNC8(handle, 0, if_name, &rlink);
	if (err < 0) {
		/* link does not exist */
		FUNC14(MSG_ERROR, "VLAN: interface %s does not exist",
			   if_name);
		goto vlan_add_error;
	}
	if_idx = FUNC7(rlink);
	FUNC9(rlink);
	rlink = NULL;

	err = FUNC8(handle, 0, vlan_if_name, &rlink);
	if (err >= 0) {
		/* link does exist */
		FUNC9(rlink);
		rlink = NULL;
		FUNC14(MSG_ERROR, "VLAN: interface %s already exists",
			   vlan_if_name);
		ret = 1;
		goto vlan_add_error;
	}

	rlink = FUNC6();
	if (!rlink) {
		FUNC14(MSG_ERROR, "VLAN: failed to allocate new link");
		goto vlan_add_error;
	}

	err = FUNC12(rlink, "vlan");
	if (err < 0) {
		FUNC14(MSG_ERROR, "VLAN: failed to set link type: %s",
			   FUNC1(err));
		goto vlan_add_error;
	}

	FUNC10(rlink, if_idx);
	FUNC11(rlink, vlan_if_name);

	err = FUNC13(rlink, vid);
	if (err < 0) {
		FUNC14(MSG_ERROR, "VLAN: failed to set link vlan id: %s",
			   FUNC1(err));
		goto vlan_add_error;
	}

	err = FUNC5(handle, rlink, NLM_F_CREATE);
	if (err < 0) {
		FUNC14(MSG_ERROR, "VLAN: failed to create link %s for "
			   "vlan %d on %s (%d): %s",
			   vlan_if_name, vid, if_name, if_idx,
			   FUNC1(err));
		goto vlan_add_error;
	}

	ret = 0;

vlan_add_error:
	if (rlink)
		FUNC9(rlink);
	if (handle)
		FUNC3(handle);
	return ret;
}