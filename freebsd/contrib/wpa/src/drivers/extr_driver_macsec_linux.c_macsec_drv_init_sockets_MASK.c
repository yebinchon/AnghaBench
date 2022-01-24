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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {scalar_t__ sa_family; int /*<<< orphan*/  sa_data; } ;
struct sockaddr_ll {scalar_t__ sll_ifindex; scalar_t__ ifr_ifindex; TYPE_2__ ifr_hwaddr; int /*<<< orphan*/  ifr_name; int /*<<< orphan*/  sll_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_3__ {scalar_t__ sock; int /*<<< orphan*/  ifname; int /*<<< orphan*/  ctx; } ;
struct macsec_drv_data {TYPE_1__ common; } ;
struct ifreq {scalar_t__ sll_ifindex; scalar_t__ ifr_ifindex; TYPE_2__ ifr_hwaddr; int /*<<< orphan*/  ifr_name; int /*<<< orphan*/  sll_family; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_PACKET ; 
 scalar_t__ ARPHRD_ETHER ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_PAE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  PF_PACKET ; 
 int /*<<< orphan*/  SIOCGIFHWADDR ; 
 int /*<<< orphan*/  SIOCGIFINDEX ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 scalar_t__ FUNC0 (scalar_t__,struct sockaddr*,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,struct sockaddr_ll*) ; 
 int /*<<< orphan*/  macsec_drv_handle_read ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_ll*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pae_group_addr ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC11(struct macsec_drv_data *drv, u8 *own_addr)
{
#ifdef __linux__
	struct ifreq ifr;
	struct sockaddr_ll addr;

	drv->common.sock = FUNC7(PF_PACKET, SOCK_RAW, FUNC2(ETH_P_PAE));
	if (drv->common.sock < 0) {
		FUNC10(MSG_ERROR, "socket[PF_PACKET,SOCK_RAW]: %s",
			   FUNC8(errno));
		return -1;
	}

	if (FUNC1(drv->common.sock, macsec_drv_handle_read,
				     drv->common.ctx, NULL)) {
		FUNC10(MSG_INFO, "Could not register read socket");
		return -1;
	}

	FUNC5(&ifr, 0, sizeof(ifr));
	FUNC6(ifr.ifr_name, drv->common.ifname, sizeof(ifr.ifr_name));
	if (FUNC3(drv->common.sock, SIOCGIFINDEX, &ifr) != 0) {
		FUNC10(MSG_ERROR, "ioctl(SIOCGIFINDEX): %s",
			   FUNC8(errno));
		return -1;
	}

	FUNC5(&addr, 0, sizeof(addr));
	addr.sll_family = AF_PACKET;
	addr.sll_ifindex = ifr.ifr_ifindex;
	FUNC10(MSG_DEBUG, "Opening raw packet socket for ifindex %d",
		   addr.sll_ifindex);

	if (FUNC0(drv->common.sock, (struct sockaddr *) &addr, sizeof(addr)) < 0)
	{
		FUNC10(MSG_ERROR, "bind: %s", FUNC8(errno));
		return -1;
	}

	/* filter multicast address */
	if (FUNC9(drv->common.sock, ifr.ifr_ifindex,
				       pae_group_addr, 1) < 0) {
		FUNC10(MSG_ERROR, "wired: Failed to add multicast group "
			   "membership");
		return -1;
	}

	FUNC5(&ifr, 0, sizeof(ifr));
	FUNC6(ifr.ifr_name, drv->common.ifname, sizeof(ifr.ifr_name));
	if (FUNC3(drv->common.sock, SIOCGIFHWADDR, &ifr) != 0) {
		FUNC10(MSG_ERROR, "ioctl(SIOCGIFHWADDR): %s",
			   FUNC8(errno));
		return -1;
	}

	if (ifr.ifr_hwaddr.sa_family != ARPHRD_ETHER) {
		FUNC10(MSG_INFO, "Invalid HW-addr family 0x%04x",
			   ifr.ifr_hwaddr.sa_family);
		return -1;
	}
	FUNC4(own_addr, ifr.ifr_hwaddr.sa_data, ETH_ALEN);

	return 0;
#else /* __linux__ */
	return -1;
#endif /* __linux__ */
}