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
typedef  int /*<<< orphan*/  sockaddr_u ;
typedef  int /*<<< orphan*/  endpt ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MCASTOPEN ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(
	sockaddr_u *	addr
	)
{
#ifdef MCAST
	endpt *iface;

	/*
	 * Check to see if this is a multicast address
	 */
	if (!addr_ismulticast(addr)) {
		msyslog(LOG_ERR, "invalid multicast address %s",
			stoa(addr));
		return;
	}

	/*
	 * Disable reception of multicast packets
	 */
	while ((iface = find_flagged_addr_in_list(addr, INT_MCASTOPEN))
	       != NULL)
		socket_multicast_disable(iface, addr);

	delete_addr_from_list(addr);

#else /* not MCAST */
	FUNC3(LOG_ERR,
		"Can not delete multicast address %s: no multicast support",
		FUNC5(addr));
#endif /* not MCAST */
}