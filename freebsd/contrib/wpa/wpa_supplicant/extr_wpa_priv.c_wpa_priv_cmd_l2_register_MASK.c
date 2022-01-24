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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct wpa_priv_interface {int /*<<< orphan*/  fd; int /*<<< orphan*/ ** l2; TYPE_1__* l2_ctx; int /*<<< orphan*/  ifname; int /*<<< orphan*/ * l2_addr_len; int /*<<< orphan*/ * l2_addr; } ;
struct sockaddr_un {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
struct TYPE_2__ {int idx; struct wpa_priv_interface* parent; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPA_PRIV_MAX_L2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sockaddr_un*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  wpa_priv_l2_rx ; 

__attribute__((used)) static void FUNC7(struct wpa_priv_interface *iface,
				     struct sockaddr_un *from,
				     socklen_t fromlen,
				     void *buf, size_t len)
{
	int *reg_cmd = buf;
	u8 own_addr[ETH_ALEN];
	int res;
	u16 proto;
	int idx;

	if (len != 2 * sizeof(int)) {
		FUNC5(MSG_DEBUG, "Invalid l2_register length %lu",
			   (unsigned long) len);
		return;
	}

	proto = reg_cmd[0];
	if (!FUNC6(proto)) {
		FUNC5(MSG_DEBUG, "Refused l2_packet connection for "
			   "ethertype 0x%x", proto);
		return;
	}

	for (idx = 0; idx < WPA_PRIV_MAX_L2; idx++) {
		if (!iface->l2[idx])
			break;
	}
	if (idx == WPA_PRIV_MAX_L2) {
		FUNC5(MSG_DEBUG, "No free l2_packet connection found");
		return;
	}

	FUNC3(&iface->l2_addr[idx], from, fromlen);
	iface->l2_addr_len[idx] = fromlen;

	iface->l2_ctx[idx].idx = idx;
	iface->l2_ctx[idx].parent = iface;
	iface->l2[idx] = FUNC2(iface->ifname, NULL, proto,
					wpa_priv_l2_rx, &iface->l2_ctx[idx],
					reg_cmd[1]);
	if (!iface->l2[idx]) {
		FUNC5(MSG_DEBUG, "Failed to initialize l2_packet "
			   "instance for protocol %d", proto);
		return;
	}

	if (FUNC1(iface->l2[idx], own_addr) < 0) {
		FUNC5(MSG_DEBUG, "Failed to get own address from "
			   "l2_packet");
		FUNC0(iface->l2[idx]);
		iface->l2[idx] = NULL;
		return;
	}

	res = FUNC4(iface->fd, own_addr, ETH_ALEN, 0,
		     (struct sockaddr *) from, fromlen);
	FUNC5(MSG_DEBUG, "L2 registration[idx=%d]: res=%d", idx, res);
}