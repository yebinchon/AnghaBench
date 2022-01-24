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
typedef  int /*<<< orphan*/  u8 ;
struct sockaddr_ll {int /*<<< orphan*/  sll_ifindex; int /*<<< orphan*/  ifr_ifindex; int /*<<< orphan*/  sll_family; int /*<<< orphan*/  ifr_name; } ;
struct sockaddr {int dummy; } ;
struct ifreq {int /*<<< orphan*/  sll_ifindex; int /*<<< orphan*/  ifr_ifindex; int /*<<< orphan*/  sll_family; int /*<<< orphan*/  ifr_name; } ;
struct hostap_driver_data {scalar_t__ sock; int /*<<< orphan*/  iface; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_PACKET ; 
 int /*<<< orphan*/  ETH_P_ALL ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  PF_PACKET ; 
 int /*<<< orphan*/  SIOCGIFINDEX ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 scalar_t__ FUNC0 (scalar_t__,struct sockaddr*,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,struct hostap_driver_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  handle_read ; 
 scalar_t__ FUNC2 (struct hostap_driver_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,struct sockaddr_ll*) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_ll*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC11(struct hostap_driver_data *drv, u8 *own_addr)
{
	struct ifreq ifr;
	struct sockaddr_ll addr;

	drv->sock = FUNC8(PF_PACKET, SOCK_RAW, FUNC3(ETH_P_ALL));
	if (drv->sock < 0) {
		FUNC10(MSG_ERROR, "socket[PF_PACKET,SOCK_RAW]: %s",
			   FUNC9(errno));
		return -1;
	}

	if (FUNC1(drv->sock, handle_read, drv, NULL)) {
		FUNC10(MSG_ERROR, "Could not register read socket");
		return -1;
	}

        FUNC6(&ifr, 0, sizeof(ifr));
	if (FUNC7(ifr.ifr_name, sizeof(ifr.ifr_name), "%sap",
			drv->iface) >= (int) sizeof(ifr.ifr_name)) {
		FUNC10(MSG_ERROR, "hostap: AP interface name truncated");
		return -1;
	}
        if (FUNC4(drv->sock, SIOCGIFINDEX, &ifr) != 0) {
		FUNC10(MSG_ERROR, "ioctl(SIOCGIFINDEX): %s",
			   FUNC9(errno));
		return -1;
        }

	if (FUNC2(drv, 1)) {
		return -1;
	}

	FUNC6(&addr, 0, sizeof(addr));
	addr.sll_family = AF_PACKET;
	addr.sll_ifindex = ifr.ifr_ifindex;
	FUNC10(MSG_DEBUG, "Opening raw packet socket for ifindex %d",
		   addr.sll_ifindex);

	if (FUNC0(drv->sock, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
		FUNC10(MSG_ERROR, "bind: %s", FUNC9(errno));
		return -1;
	}

	return FUNC5(drv->sock, drv->iface, own_addr);
}