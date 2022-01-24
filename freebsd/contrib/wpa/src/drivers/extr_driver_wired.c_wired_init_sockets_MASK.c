#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {scalar_t__ sock; int /*<<< orphan*/  ifname; int /*<<< orphan*/  ctx; } ;
struct wpa_driver_wired_data {scalar_t__ dhcp_sock; TYPE_4__ common; } ;
struct TYPE_7__ {int /*<<< orphan*/  ifrn_name; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_5__ {scalar_t__ sa_family; int /*<<< orphan*/  sa_data; } ;
struct sockaddr_ll {scalar_t__ sll_ifindex; scalar_t__ ifr_ifindex; TYPE_3__ ifr_ifrn; TYPE_2__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; TYPE_1__ ifr_hwaddr; int /*<<< orphan*/  ifr_name; int /*<<< orphan*/  sll_family; } ;
struct sockaddr_in {scalar_t__ sll_ifindex; scalar_t__ ifr_ifindex; TYPE_3__ ifr_ifrn; TYPE_2__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; TYPE_1__ ifr_hwaddr; int /*<<< orphan*/  ifr_name; int /*<<< orphan*/  sll_family; } ;
struct sockaddr {int dummy; } ;
struct ifreq {scalar_t__ sll_ifindex; scalar_t__ ifr_ifindex; TYPE_3__ ifr_ifrn; TYPE_2__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; TYPE_1__ ifr_hwaddr; int /*<<< orphan*/  ifr_name; int /*<<< orphan*/  sll_family; } ;
typedef  int /*<<< orphan*/  n ;
typedef  int /*<<< orphan*/  ifr ;
typedef  int /*<<< orphan*/  addr2 ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_PACKET ; 
 scalar_t__ ARPHRD_ETHER ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int ETH_P_PAE ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_PACKET ; 
 int /*<<< orphan*/  SIOCGIFHWADDR ; 
 int /*<<< orphan*/  SIOCGIFINDEX ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_BINDTODEVICE ; 
 int /*<<< orphan*/  SO_BROADCAST ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int FUNC0 (scalar_t__,struct sockaddr*,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  handle_dhcp ; 
 int /*<<< orphan*/  handle_read ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,struct sockaddr_ll*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_ll*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pae_group_addr ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC12(struct wpa_driver_wired_data *drv, u8 *own_addr)
{
#ifdef __linux__
	struct ifreq ifr;
	struct sockaddr_ll addr;
	struct sockaddr_in addr2;
	int n = 1;

	drv->common.sock = FUNC8(PF_PACKET, SOCK_RAW, FUNC2(ETH_P_PAE));
	if (drv->common.sock < 0) {
		FUNC11(MSG_ERROR, "socket[PF_PACKET,SOCK_RAW]: %s",
			   FUNC9(errno));
		return -1;
	}

	if (FUNC1(drv->common.sock, handle_read,
				     drv->common.ctx, NULL)) {
		FUNC11(MSG_INFO, "Could not register read socket");
		return -1;
	}

	FUNC5(&ifr, 0, sizeof(ifr));
	FUNC6(ifr.ifr_name, drv->common.ifname, sizeof(ifr.ifr_name));
	if (FUNC3(drv->common.sock, SIOCGIFINDEX, &ifr) != 0) {
		FUNC11(MSG_ERROR, "ioctl(SIOCGIFINDEX): %s",
			   FUNC9(errno));
		return -1;
	}

	FUNC5(&addr, 0, sizeof(addr));
	addr.sll_family = AF_PACKET;
	addr.sll_ifindex = ifr.ifr_ifindex;
	FUNC11(MSG_DEBUG, "Opening raw packet socket for ifindex %d",
		   addr.sll_ifindex);

	if (FUNC0(drv->common.sock, (struct sockaddr *) &addr, sizeof(addr)) < 0)
	{
		FUNC11(MSG_ERROR, "bind: %s", FUNC9(errno));
		return -1;
	}

	/* filter multicast address */
	if (FUNC10(drv->common.sock, ifr.ifr_ifindex,
				       pae_group_addr, 1) < 0) {
		FUNC11(MSG_ERROR, "wired: Failed to add multicast group "
			   "membership");
		return -1;
	}

	FUNC5(&ifr, 0, sizeof(ifr));
	FUNC6(ifr.ifr_name, drv->common.ifname, sizeof(ifr.ifr_name));
	if (FUNC3(drv->common.sock, SIOCGIFHWADDR, &ifr) != 0) {
		FUNC11(MSG_ERROR, "ioctl(SIOCGIFHWADDR): %s",
			   FUNC9(errno));
		return -1;
	}

	if (ifr.ifr_hwaddr.sa_family != ARPHRD_ETHER) {
		FUNC11(MSG_INFO, "Invalid HW-addr family 0x%04x",
			   ifr.ifr_hwaddr.sa_family);
		return -1;
	}
	FUNC4(own_addr, ifr.ifr_hwaddr.sa_data, ETH_ALEN);

	/* setup dhcp listen socket for sta detection */
	if ((drv->dhcp_sock = FUNC8(PF_INET, SOCK_DGRAM, IPPROTO_UDP)) < 0) {
		FUNC11(MSG_ERROR, "socket call failed for dhcp: %s",
			   FUNC9(errno));
		return -1;
	}

	if (FUNC1(drv->dhcp_sock, handle_dhcp,
				     drv->common.ctx, NULL)) {
		FUNC11(MSG_INFO, "Could not register read socket");
		return -1;
	}

	FUNC5(&addr2, 0, sizeof(addr2));
	addr2.sin_family = AF_INET;
	addr2.sin_port = FUNC2(67);
	addr2.sin_addr.s_addr = INADDR_ANY;

	if (FUNC7(drv->dhcp_sock, SOL_SOCKET, SO_REUSEADDR, (char *) &n,
		       sizeof(n)) == -1) {
		FUNC11(MSG_ERROR, "setsockopt[SOL_SOCKET,SO_REUSEADDR]: %s",
			   FUNC9(errno));
		return -1;
	}
	if (FUNC7(drv->dhcp_sock, SOL_SOCKET, SO_BROADCAST, (char *) &n,
		       sizeof(n)) == -1) {
		FUNC11(MSG_ERROR, "setsockopt[SOL_SOCKET,SO_BROADCAST]: %s",
			   FUNC9(errno));
		return -1;
	}

	FUNC5(&ifr, 0, sizeof(ifr));
	FUNC6(ifr.ifr_ifrn.ifrn_name, drv->common.ifname, IFNAMSIZ);
	if (FUNC7(drv->dhcp_sock, SOL_SOCKET, SO_BINDTODEVICE,
		       (char *) &ifr, sizeof(ifr)) < 0) {
		FUNC11(MSG_ERROR,
			   "setsockopt[SOL_SOCKET,SO_BINDTODEVICE]: %s",
			   FUNC9(errno));
		return -1;
	}

	if (FUNC0(drv->dhcp_sock, (struct sockaddr *) &addr2,
		 sizeof(struct sockaddr)) == -1) {
		FUNC11(MSG_ERROR, "bind: %s", FUNC9(errno));
		return -1;
	}

	return 0;
#else /* __linux__ */
	return -1;
#endif /* __linux__ */
}