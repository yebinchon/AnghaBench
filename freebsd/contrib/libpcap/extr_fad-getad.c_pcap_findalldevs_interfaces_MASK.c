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
struct sockaddr {int dummy; } ;
struct ifaddrs {char const* ifa_name; int ifa_flags; struct sockaddr* ifa_dstaddr; struct sockaddr* ifa_broadaddr; struct sockaddr* ifa_netmask; struct sockaddr* ifa_addr; struct ifaddrs* ifa_next; } ;
typedef  int /*<<< orphan*/  pcap_if_list_t ;
typedef  int /*<<< orphan*/  get_if_flags_func ;

/* Variables and functions */
 int IFF_BROADCAST ; 
 int IFF_POINTOPOINT ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 size_t FUNC0 (struct sockaddr*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,struct sockaddr*,size_t,struct sockaddr*,size_t,struct sockaddr*,size_t,struct sockaddr*,size_t,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct ifaddrs*) ; 
 scalar_t__ FUNC3 (struct ifaddrs**) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC6 (char const*,char) ; 
 int FUNC7 (char const*) ; 

int
FUNC8(pcap_if_list_t *devlistp, char *errbuf,
    int (*check_usable)(const char *), get_if_flags_func get_flags_func)
{
	struct ifaddrs *ifap, *ifa;
	struct sockaddr *addr, *netmask, *broadaddr, *dstaddr;
	size_t addr_size, broadaddr_size, dstaddr_size;
	int ret = 0;
	char *p, *q;

	/*
	 * Get the list of interface addresses.
	 *
	 * Note: this won't return information about interfaces
	 * with no addresses, so, if a platform has interfaces
	 * with no interfaces on which traffic can be captured,
	 * we must check for those interfaces as well (see, for
	 * example, what's done on Linux).
	 *
	 * LAN interfaces will probably have link-layer
	 * addresses; I don't know whether all implementations
	 * of "getifaddrs()" now, or in the future, will return
	 * those.
	 */
	if (FUNC3(&ifap) != 0) {
		FUNC5(errbuf, PCAP_ERRBUF_SIZE,
		    errno, "getifaddrs");
		return (-1);
	}
	for (ifa = ifap; ifa != NULL; ifa = ifa->ifa_next) {
		/*
		 * If this entry has a colon followed by a number at
		 * the end, we assume it's a logical interface.  Those
		 * are just the way you assign multiple IP addresses to
		 * a real interface on Linux, so an entry for a logical
		 * interface should be treated like the entry for the
		 * real interface; we do that by stripping off the ":"
		 * and the number.
		 *
		 * XXX - should we do this only on Linux?
		 */
		p = FUNC6(ifa->ifa_name, ':');
		if (p != NULL) {
			/*
			 * We have a ":"; is it followed by a number?
			 */
			q = p + 1;
			while (FUNC4((unsigned char)*q))
				q++;
			if (*q == '\0') {
				/*
				 * All digits after the ":" until the end.
				 * Strip off the ":" and everything after
				 * it.
				 */
			       *p = '\0';
			}
		}

		/*
		 * Can we capture on this device?
		 */
		if (!(*check_usable)(ifa->ifa_name)) {
			/*
			 * No.
			 */
			continue;
		}

		/*
		 * "ifa_addr" was apparently null on at least one
		 * interface on some system.  Therefore, we supply
		 * the address and netmask only if "ifa_addr" is
		 * non-null (if there's no address, there's obviously
		 * no netmask).
		 */
		if (ifa->ifa_addr != NULL) {
			addr = ifa->ifa_addr;
			addr_size = FUNC0(addr);
			netmask = ifa->ifa_netmask;
		} else {
			addr = NULL;
			addr_size = 0;
			netmask = NULL;
		}

		/*
		 * Note that, on some platforms, ifa_broadaddr and
		 * ifa_dstaddr could be the same field (true on at
		 * least some versions of *BSD and macOS), so we
		 * can't just check whether the broadcast address
		 * is null and add it if so and check whether the
		 * destination address is null and add it if so.
		 *
		 * Therefore, we must also check the IFF_BROADCAST
		 * flag, and only add a broadcast address if it's
		 * set, and check the IFF_POINTTOPOINT flag, and
		 * only add a destination address if it's set (as
		 * per man page recommendations on some of those
		 * platforms).
		 */
		if (ifa->ifa_flags & IFF_BROADCAST &&
		    ifa->ifa_broadaddr != NULL) {
			broadaddr = ifa->ifa_broadaddr;
			broadaddr_size = FUNC0(broadaddr);
		} else {
			broadaddr = NULL;
			broadaddr_size = 0;
		}
		if (ifa->ifa_flags & IFF_POINTOPOINT &&
		    ifa->ifa_dstaddr != NULL) {
			dstaddr = ifa->ifa_dstaddr;
			dstaddr_size = FUNC0(ifa->ifa_dstaddr);
		} else {
			dstaddr = NULL;
			dstaddr_size = 0;
		}

		/*
		 * Add information for this address to the list.
		 */
		if (FUNC1(devlistp, ifa->ifa_name, ifa->ifa_flags,
		    get_flags_func,
		    addr, addr_size, netmask, addr_size,
		    broadaddr, broadaddr_size, dstaddr, dstaddr_size,
		    errbuf) < 0) {
			ret = -1;
			break;
		}
	}

	FUNC2(ifap);

	return (ret);
}