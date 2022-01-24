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
struct rtmsg {int /*<<< orphan*/  rtm_dst_len; int /*<<< orphan*/  rtm_family; } ;
struct nl_msg {int dummy; } ;
struct get_neigh_handler {scalar_t__ oif; int /*<<< orphan*/  sock; int /*<<< orphan*/  dst; } ;
typedef  int /*<<< orphan*/  rmsg ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NLMSG_ALIGNTO ; 
 int /*<<< orphan*/  NL_CB_CUSTOM ; 
 int /*<<< orphan*/  NL_CB_VALID ; 
 int /*<<< orphan*/  RTA_DST ; 
 int /*<<< orphan*/  RTA_OIF ; 
 int /*<<< orphan*/  RTM_GETROUTE ; 
 int /*<<< orphan*/  get_route_cb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct nl_msg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct get_neigh_handler*) ; 
 int /*<<< orphan*/  FUNC5 (struct nl_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nl_msg*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct nl_msg* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nl_msg*,struct rtmsg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nl_msg*) ; 

int FUNC10(struct get_neigh_handler *neigh_handler)
{
	struct nl_msg *m;
	struct rtmsg rmsg = {
		.rtm_family = FUNC0(neigh_handler->dst),
		.rtm_dst_len = FUNC1(neigh_handler->dst),
	};
	int err;

	m = FUNC7(RTM_GETROUTE, 0);

	if (m == NULL)
		return -ENOMEM;

	FUNC8(m, &rmsg, sizeof(rmsg), NLMSG_ALIGNTO);

	FUNC5(m, RTA_DST, neigh_handler->dst);

	if (neigh_handler->oif > 0)
		FUNC6(m, RTA_OIF, neigh_handler->oif);

	err = FUNC3(neigh_handler->sock, m);
	FUNC9(m);
	if (err < 0)
		return err;

	FUNC4(neigh_handler->sock, NL_CB_VALID,
			    NL_CB_CUSTOM, &get_route_cb, neigh_handler);

	err = FUNC2(neigh_handler->sock);

	return err;
}