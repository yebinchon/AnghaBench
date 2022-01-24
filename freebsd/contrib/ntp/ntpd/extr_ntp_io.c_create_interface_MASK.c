#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
struct interface {scalar_t__ fd; int flags; scalar_t__ bfd; scalar_t__ family; int /*<<< orphan*/  sin; int /*<<< orphan*/  ignore_packets; int /*<<< orphan*/  ifnum; int /*<<< orphan*/  name; int /*<<< orphan*/  bcast; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;
struct TYPE_3__ {int /*<<< orphan*/  addr; struct TYPE_3__* link; } ;
typedef  TYPE_1__ remaddr_t ;
typedef  struct interface endpt ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct interface*) ; 
 int INT_BROADCAST ; 
 int INT_LOOPBACK ; 
 int INT_MULTICAST ; 
 int INT_WILDCARD ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int RESM_INTERFACE ; 
 int RESM_NTPONLY ; 
 int /*<<< orphan*/  RESTRICT_FLAGS ; 
 int /*<<< orphan*/  RES_IGNORE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct interface*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct interface*) ; 
 struct interface* loopback_interface ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 struct interface* FUNC11 (struct interface*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct interface*) ; 
 TYPE_1__* remoteaddr_list ; 
 scalar_t__ FUNC13 (struct interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct interface *
FUNC15(
	u_short			port,
	struct interface *	protot
	)
{
	sockaddr_u	resmask;
	endpt *		iface;
#if defined(MCAST) && defined(MULTICAST_NONEWSOCKET)
	remaddr_t *	entry;
	remaddr_t *	next_entry;
#endif
	FUNC1(2, ("create_interface(%s#%d)\n", FUNC14(&protot->sin),
		    port));

	/* build an interface */
	iface = FUNC11(protot);

	/*
	 * create socket
	 */
	iface->fd = FUNC12(&iface->sin, 0, 0, iface);

	if (iface->fd != INVALID_SOCKET)
		FUNC9(iface);

	if ((INT_BROADCAST & iface->flags)
	    && iface->bfd != INVALID_SOCKET)
		FUNC10(LOG_INFO, "Listening on broadcast address %s#%d",
			FUNC14((&iface->bcast)), port);

	if (INVALID_SOCKET == iface->fd
	    && INVALID_SOCKET == iface->bfd) {
		FUNC10(LOG_ERR, "unable to create socket on %s (%d) for %s#%d",
			iface->name,
			iface->ifnum,
			FUNC14((&iface->sin)),
			port);
		FUNC7(iface);
		return NULL;
	}

	/*
	 * Blacklist our own addresses, no use talking to ourself
	 */
	FUNC4(&resmask, FUNC0(&iface->sin));
	FUNC8(RESTRICT_FLAGS, &iface->sin, &resmask,
		      -4, RESM_NTPONLY | RESM_INTERFACE, RES_IGNORE, 0);

	/*
	 * set globals with the first found
	 * loopback interface of the appropriate class
	 */
	if (NULL == loopback_interface && AF_INET == iface->family
	    && (INT_LOOPBACK & iface->flags))
		loopback_interface = iface;

	/*
	 * put into our interface list
	 */
	FUNC5(&iface->sin, iface);
	FUNC6(iface);

#if defined(MCAST) && defined(MULTICAST_NONEWSOCKET)
	/*
	 * Join any previously-configured compatible multicast groups.
	 */
	if (INT_MULTICAST & iface->flags &&
	    !((INT_LOOPBACK | INT_WILDCARD) & iface->flags) &&
	    !iface->ignore_packets) {
		for (entry = remoteaddr_list;
		     entry != NULL;
		     entry = next_entry) {
			next_entry = entry->link;
			if (AF(&iface->sin) != AF(&entry->addr) ||
			    !IS_MCAST(&entry->addr))
				continue;
			if (socket_multicast_enable(iface,
						    &entry->addr))
				msyslog(LOG_INFO,
					"Joined %s socket to multicast group %s",
					stoa(&iface->sin),
					stoa(&entry->addr));
			else
				msyslog(LOG_ERR,
					"Failed to join %s socket to multicast group %s",
					stoa(&iface->sin),
					stoa(&entry->addr));
		}
	}
#endif	/* MCAST && MCAST_NONEWSOCKET */

	FUNC2(2, (iface, "created ", "\n"));
	return iface;
}