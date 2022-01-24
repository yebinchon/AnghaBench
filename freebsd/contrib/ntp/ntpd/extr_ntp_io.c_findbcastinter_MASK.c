#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sockaddr_u ;
struct TYPE_6__ {int flags; int /*<<< orphan*/  name; int /*<<< orphan*/  ifnum; int /*<<< orphan*/  sin; int /*<<< orphan*/  bcast; int /*<<< orphan*/  mask; scalar_t__ ignore_packets; struct TYPE_6__* elink; } ;
typedef  TYPE_1__ endpt ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int INT_LOOPBACK ; 
 int INT_MULTICAST ; 
 int INT_WILDCARD ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ep_list ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

endpt *
FUNC14(
	sockaddr_u *addr
	)
{
	endpt *	iface;

	iface = NULL;
#if !defined(MPE) && (defined(SIOCGIFCONF) || defined(SYS_WINNT))
	DPRINTF(4, ("Finding broadcast/multicast interface for addr %s in list of addresses\n",
		    stoa(addr)));

	iface = findlocalinterface(addr, INT_LOOPBACK | INT_WILDCARD,
				   1);
	if (iface != NULL) {
		DPRINTF(4, ("Easily found bcast-/mcast- interface index #%d %s\n",
			    iface->ifnum, iface->name));
		return iface;
	}

	/*
	 * plan B - try to find something reasonable in our lists in
	 * case kernel lookup doesn't help
	 */
	for (iface = ep_list; iface != NULL; iface = iface->elink) {
		if (iface->flags & INT_WILDCARD)
			continue;

		/* Don't bother with ignored interfaces */
		if (iface->ignore_packets)
			continue;

		/*
		 * First look if this is the correct family
		 */
		if(AF(&iface->sin) != AF(addr))
			continue;

		/* Skip the loopback addresses */
		if (iface->flags & INT_LOOPBACK)
			continue;

		/*
		 * If we are looking to match a multicast address and
		 * this interface is one...
		 */
		if (addr_ismulticast(addr)
		    && (iface->flags & INT_MULTICAST)) {
#ifdef INCLUDE_IPV6_SUPPORT
			/*
			 * ...it is the winner unless we're looking for
			 * an interface to use for link-local multicast
			 * and its address is not link-local.
			 */
			if (IS_IPV6(addr)
			    && IN6_IS_ADDR_MC_LINKLOCAL(PSOCK_ADDR6(addr))
			    && !IN6_IS_ADDR_LINKLOCAL(PSOCK_ADDR6(&iface->sin)))
				continue;
#endif
			break;
		}

		/*
		 * We match only those interfaces marked as
		 * broadcastable and either the explicit broadcast
		 * address or the network portion of the IP address.
		 * Sloppy.
		 */
		if (IS_IPV4(addr)) {
			if (SOCK_EQ(&iface->bcast, addr))
				break;

			if ((NSRCADR(&iface->sin) & NSRCADR(&iface->mask))
			    == (NSRCADR(addr)	  & NSRCADR(&iface->mask)))
				break;
		}
#ifdef INCLUDE_IPV6_SUPPORT
		else if (IS_IPV6(addr)) {
			if (SOCK_EQ(&iface->bcast, addr))
				break;

			if (SOCK_EQ(netof(&iface->sin), netof(addr)))
				break;
		}
#endif
	}
#endif /* SIOCGIFCONF */
	if (NULL == iface) {
		FUNC2(4, ("No bcast interface found for %s\n",
			    FUNC13(addr)));
		iface = FUNC1(addr);
	} else {
		FUNC2(4, ("Found bcast-/mcast- interface index #%d %s\n",
			    iface->ifnum, iface->name));
	}

	return iface;
}