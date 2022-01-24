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
struct timespec {scalar_t__ tv_sec; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {scalar_t__ ia6t_expire; scalar_t__ ia6t_preferred; } ;
struct ifconfig_inet6_addr {int prefixlen; int flags; int vhid; TYPE_2__ lifetime; TYPE_1__* sin6; int /*<<< orphan*/ * dstin6; } ;
struct ifaddrs {int /*<<< orphan*/  ifa_name; } ;
typedef  int /*<<< orphan*/  ifconfig_handle_t ;
typedef  int /*<<< orphan*/  addr_buf ;
struct TYPE_3__ {int sin6_scope_id; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC_FAST ; 
 int IN6_IFF_ANYCAST ; 
 int IN6_IFF_AUTOCONF ; 
 int IN6_IFF_DEPRECATED ; 
 int IN6_IFF_DETACHED ; 
 int IN6_IFF_DUPLICATED ; 
 int IN6_IFF_PREFER_SOURCE ; 
 int IN6_IFF_TEMPORARY ; 
 int IN6_IFF_TENTATIVE ; 
 int /*<<< orphan*/  FUNC0 (long,scalar_t__) ; 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (struct sockaddr*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ifaddrs*,struct ifconfig_inet6_addr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void
FUNC7(ifconfig_handle_t *lifh, struct ifaddrs *ifa)
{
	struct ifconfig_inet6_addr addr;
	char addr_buf[NI_MAXHOST];
	struct timespec now;

	/* Print the address */
	if (FUNC4(lifh, ifa->ifa_name, ifa, &addr) != 0) {
		FUNC2(1, "ifconfig_inet6_get_addrinfo");
	}
	if (0 != FUNC3((struct sockaddr *)addr.sin6, addr.sin6->sin6_len,
	    addr_buf, sizeof(addr_buf), NULL, 0, NI_NUMERICHOST)) {
		FUNC5(AF_INET6, &addr.sin6->sin6_addr, addr_buf,
		    sizeof(addr_buf));
	}
	FUNC6("\tinet6 %s", addr_buf);

	if (addr.dstin6) {
		FUNC5(AF_INET6, addr.dstin6, addr_buf, sizeof(addr_buf));
		FUNC6(" --> %s", addr_buf);
	}

	/* Print the netmask */
	FUNC6(" prefixlen %d ", addr.prefixlen);

	/* Print the scopeid*/
	if (addr.sin6->sin6_scope_id) {
		FUNC6("scopeid 0x%x ", addr.sin6->sin6_scope_id);
	}

	/* Print the flags */
	if ((addr.flags & IN6_IFF_ANYCAST) != 0) {
		FUNC6("anycast ");
	}
	if ((addr.flags & IN6_IFF_TENTATIVE) != 0) {
		FUNC6("tentative ");
	}
	if ((addr.flags & IN6_IFF_DUPLICATED) != 0) {
		FUNC6("duplicated ");
	}
	if ((addr.flags & IN6_IFF_DETACHED) != 0) {
		FUNC6("detached ");
	}
	if ((addr.flags & IN6_IFF_DEPRECATED) != 0) {
		FUNC6("deprecated ");
	}
	if ((addr.flags & IN6_IFF_AUTOCONF) != 0) {
		FUNC6("autoconf ");
	}
	if ((addr.flags & IN6_IFF_TEMPORARY) != 0) {
		FUNC6("temporary ");
	}
	if ((addr.flags & IN6_IFF_PREFER_SOURCE) != 0) {
		FUNC6("prefer_source ");
	}

	/* Print the lifetimes */
	FUNC1(CLOCK_MONOTONIC_FAST, &now);
	if (addr.lifetime.ia6t_preferred || addr.lifetime.ia6t_expire) {
		FUNC6("pltime ");
		if (addr.lifetime.ia6t_preferred) {
			FUNC6("%ld ", FUNC0(0l,
			    addr.lifetime.ia6t_preferred - now.tv_sec));
		} else {
			FUNC6("infty ");
		}

		FUNC6("vltime ");
		if (addr.lifetime.ia6t_expire) {
			FUNC6("%ld ", FUNC0(0l,
			    addr.lifetime.ia6t_expire - now.tv_sec));
		} else {
			FUNC6("infty ");
		}
	}

	/* Print the vhid */
	if (addr.vhid != 0) {
		FUNC6("vhid %d ", addr.vhid);
	}
	FUNC6("\n");
}