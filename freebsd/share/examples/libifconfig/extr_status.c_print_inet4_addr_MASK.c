#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ifconfig_inet_addr {int vhid; TYPE_5__* broadcast; TYPE_4__* netmask; TYPE_2__* dst; TYPE_1__* sin; } ;
struct ifaddrs {int /*<<< orphan*/  ifa_name; } ;
typedef  int /*<<< orphan*/  ifconfig_handle_t ;
typedef  int /*<<< orphan*/  addr_buf ;
struct TYPE_12__ {scalar_t__ s_addr; } ;
struct TYPE_11__ {TYPE_6__ sin_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_10__ {TYPE_3__ sin_addr; } ;
struct TYPE_8__ {TYPE_6__ sin_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  sin_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int NI_MAXHOST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ifaddrs*,struct ifconfig_inet_addr*) ; 
 char* FUNC1 (TYPE_6__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void
FUNC5(ifconfig_handle_t *lifh, struct ifaddrs *ifa)
{
	struct ifconfig_inet_addr addr;
	char addr_buf[NI_MAXHOST];

	if (FUNC0(lifh, ifa->ifa_name, ifa, &addr) != 0) {
		return;
	}

	FUNC2(AF_INET, &addr.sin->sin_addr, addr_buf, sizeof(addr_buf));
	FUNC4("\tinet %s", addr_buf);

	if (addr.dst) {
		FUNC4(" --> %s", FUNC1(addr.dst->sin_addr));
	}

	FUNC4(" netmask 0x%x ", FUNC3(addr.netmask->sin_addr.s_addr));

	if ((addr.broadcast != NULL) &&
	    (addr.broadcast->sin_addr.s_addr != 0)) {
		FUNC4("broadcast %s ", FUNC1(addr.broadcast->sin_addr));
	}

	if (addr.vhid != 0) {
		FUNC4("vhid %d ", addr.vhid);
	}
	FUNC4("\n");
}