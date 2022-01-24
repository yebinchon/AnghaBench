#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wpa_driver_nl80211_data {int device_ap_sme; scalar_t__ monitor_sock; int /*<<< orphan*/  monitor_refcount; int /*<<< orphan*/  monitor_ifidx; TYPE_2__* global; TYPE_1__* first_bss; } ;
struct sockaddr_ll {int /*<<< orphan*/  sll_ifindex; int /*<<< orphan*/  sll_family; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  optval ;
typedef  int /*<<< orphan*/  ll ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int /*<<< orphan*/  ioctl_sock; } ;
struct TYPE_3__ {char* ifname; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_PACKET ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_P_ALL ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MONITOR ; 
 int /*<<< orphan*/  PF_PACKET ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_PRIORITY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,struct sockaddr*,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,struct wpa_driver_nl80211_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  handle_monitor_read ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_ll*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_driver_nl80211_data*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_driver_nl80211_data*) ; 
 int FUNC8 (char*,int,char*,char*) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC15(struct wpa_driver_nl80211_data *drv)
{
	char buf[IFNAMSIZ];
	struct sockaddr_ll ll;
	int optval;
	socklen_t optlen;

	if (drv->monitor_ifidx >= 0) {
		drv->monitor_refcount++;
		FUNC14(MSG_DEBUG, "nl80211: Re-use existing monitor interface: refcount=%d",
			   drv->monitor_refcount);
		return 0;
	}

	if (FUNC9(drv->first_bss->ifname, "p2p-", 4) == 0) {
		/*
		 * P2P interface name is of the format p2p-%s-%d. For monitor
		 * interface name corresponding to P2P GO, replace "p2p-" with
		 * "mon-" to retain the same interface name length and to
		 * indicate that it is a monitor interface.
		 */
		FUNC11(buf, IFNAMSIZ, "mon-%s", drv->first_bss->ifname + 4);
	} else {
		int ret;

		/* Non-P2P interface with AP functionality. */
		ret = FUNC8(buf, IFNAMSIZ, "mon.%s",
				  drv->first_bss->ifname);
		if (ret >= (int) sizeof(buf))
			FUNC14(MSG_DEBUG,
				   "nl80211: Monitor interface name has been truncated to %s",
				   buf);
		else if (ret < 0)
			return ret;
	}

	buf[IFNAMSIZ - 1] = '\0';

	drv->monitor_ifidx =
		FUNC6(drv, buf, NL80211_IFTYPE_MONITOR, NULL,
				     0, NULL, NULL, 0);

	if (drv->monitor_ifidx == -EOPNOTSUPP) {
		/*
		 * This is backward compatibility for a few versions of
		 * the kernel only that didn't advertise the right
		 * attributes for the only driver that then supported
		 * AP mode w/o monitor -- ath6kl.
		 */
		FUNC14(MSG_DEBUG, "nl80211: Driver does not support "
			   "monitor interface type - try to run without it");
		drv->device_ap_sme = 1;
	}

	if (drv->monitor_ifidx < 0)
		return -1;

	if (FUNC4(drv->global->ioctl_sock, buf, 1))
		goto error;

	FUNC5(&ll, 0, sizeof(ll));
	ll.sll_family = AF_PACKET;
	ll.sll_ifindex = drv->monitor_ifidx;
	drv->monitor_sock = FUNC12(PF_PACKET, SOCK_RAW, FUNC3(ETH_P_ALL));
	if (drv->monitor_sock < 0) {
		FUNC14(MSG_ERROR, "nl80211: socket[PF_PACKET,SOCK_RAW] failed: %s",
			   FUNC13(errno));
		goto error;
	}

	if (FUNC0(drv->monitor_sock)) {
		FUNC14(MSG_INFO, "Failed to set socket filter for monitor "
			   "interface; do filtering in user space");
		/* This works, but will cost in performance. */
	}

	if (FUNC1(drv->monitor_sock, (struct sockaddr *) &ll, sizeof(ll)) < 0) {
		FUNC14(MSG_ERROR, "nl80211: monitor socket bind failed: %s",
			   FUNC13(errno));
		goto error;
	}

	optlen = sizeof(optval);
	optval = 20;
	if (FUNC10
	    (drv->monitor_sock, SOL_SOCKET, SO_PRIORITY, &optval, optlen)) {
		FUNC14(MSG_ERROR, "nl80211: Failed to set socket priority: %s",
			   FUNC13(errno));
		goto error;
	}

	if (FUNC2(drv->monitor_sock, handle_monitor_read,
				     drv, NULL)) {
		FUNC14(MSG_INFO, "nl80211: Could not register monitor read socket");
		goto error;
	}

	drv->monitor_refcount++;
	return 0;
 error:
	FUNC7(drv);
	return -1;
}