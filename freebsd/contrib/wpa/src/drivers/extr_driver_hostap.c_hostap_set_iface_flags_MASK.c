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
struct ifreq {int /*<<< orphan*/  ifr_mtu; int /*<<< orphan*/  ifr_name; } ;
struct hostap_driver_data {int /*<<< orphan*/  ioctl_sock; int /*<<< orphan*/  iface; } ;
typedef  int /*<<< orphan*/  ifr ;

/* Variables and functions */
 int /*<<< orphan*/  HOSTAPD_MTU ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  SIOCSIFMTU ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC7(void *priv, int dev_up)
{
	struct hostap_driver_data *drv = priv;
	struct ifreq ifr;
	char ifname[IFNAMSIZ];

	if (FUNC3(ifname, IFNAMSIZ, "%sap", drv->iface) >= IFNAMSIZ) {
		FUNC6(MSG_ERROR, "hostap: AP interface name truncated");
		return -1;
	}
	if (FUNC1(drv->ioctl_sock, ifname, dev_up) < 0)
		return -1;

	if (dev_up) {
		FUNC2(&ifr, 0, sizeof(ifr));
		FUNC4(ifr.ifr_name, ifname, IFNAMSIZ);
		ifr.ifr_mtu = HOSTAPD_MTU;
		if (FUNC0(drv->ioctl_sock, SIOCSIFMTU, &ifr) != 0) {
			FUNC6(MSG_INFO,
				   "Setting MTU failed - trying to survive with current value: ioctl[SIOCSIFMTU]: %s",
				   FUNC5(errno));
		}
	}

	return 0;
}