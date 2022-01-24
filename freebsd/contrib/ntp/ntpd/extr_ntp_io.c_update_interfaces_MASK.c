#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
struct TYPE_27__ {int /*<<< orphan*/  addr; TYPE_6__* ep; struct TYPE_27__* link; } ;
typedef  TYPE_2__ remaddr_t ;
typedef  scalar_t__ isc_result_t ;
typedef  int /*<<< orphan*/  isc_mem_t ;
typedef  int /*<<< orphan*/  isc_interfaceiter_t ;
struct TYPE_26__ {unsigned int family; } ;
struct TYPE_28__ {int /*<<< orphan*/  name; TYPE_1__ address; } ;
typedef  TYPE_3__ isc_interface_t ;
typedef  int /*<<< orphan*/  (* interface_receiver_t ) (void*,TYPE_4__*) ;
struct TYPE_29__ {TYPE_6__* ep; int /*<<< orphan*/  action; } ;
typedef  TYPE_4__ interface_info_t ;
struct TYPE_30__ {char* name; int flags; scalar_t__ ignore_packets; int phase; int /*<<< orphan*/  sin; struct TYPE_30__* elink; int /*<<< orphan*/ * peers; } ;
typedef  TYPE_6__ endpt ;

/* Variables and functions */
#define  ACTION_DROP 130 
#define  ACTION_IGNORE 129 
#define  ACTION_LISTEN 128 
 unsigned int AF_INET ; 
 unsigned int AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_6__*) ; 
 int FALSE ; 
 int /*<<< orphan*/  IFS_CREATED ; 
 int /*<<< orphan*/  IFS_DELETED ; 
 int /*<<< orphan*/  IFS_EXISTS ; 
 int INT_MCASTIF ; 
 int INT_MCASTOPEN ; 
 int INT_UP ; 
 int INT_WILDCARD ; 
 scalar_t__ ISC_FALSE ; 
 scalar_t__ ISC_R_SUCCESS ; 
 void* ISC_TRUE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int TRUE ; 
 scalar_t__ broadcast_client_enabled ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 TYPE_6__* ep_list ; 
 TYPE_6__* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int FUNC7 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  ipv4_works ; 
 int /*<<< orphan*/  ipv6_works ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 TYPE_6__* loopback_interface ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ FUNC19 (TYPE_6__*) ; 
 TYPE_2__* remoteaddr_list ; 
 int /*<<< orphan*/  FUNC20 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (void*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC26 (void*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC27 (void*,TYPE_4__*) ; 
 scalar_t__ sys_bclient ; 
 int sys_interphase ; 

__attribute__((used)) static int
FUNC28(
	u_short			port,
	interface_receiver_t	receiver,
	void *			data
	)
{
	isc_mem_t *		mctx = (void *)-1;
	interface_info_t	ifi;
	isc_interfaceiter_t *	iter;
	isc_result_t		result;
	isc_interface_t		isc_if;
	int			new_interface_found;
	unsigned int		family;
	endpt			enumep;
	endpt *			ep;
	endpt *			next_ep;

	FUNC0(3, ("update_interfaces(%d)\n", port));

	/*
	 * phase one - scan interfaces
	 * - create those that are not found
	 * - update those that are found
	 */

	new_interface_found = FALSE;
	iter = NULL;
	result = FUNC12(mctx, &iter);

	if (result != ISC_R_SUCCESS)
		return 0;

	/*
	 * Toggle system interface scan phase to find untouched
	 * interfaces to be deleted.
	 */
	sys_interphase ^= 0x1;

	for (result = FUNC15(iter);
	     ISC_R_SUCCESS == result;
	     result = FUNC16(iter)) {

		result = FUNC13(iter, &isc_if);

		if (result != ISC_R_SUCCESS)
			break;

		/* See if we have a valid family to use */
		family = isc_if.address.family;
		if (AF_INET != family && AF_INET6 != family)
			continue;
		if (AF_INET == family && !ipv4_works)
			continue;
		if (AF_INET6 == family && !ipv6_works)
			continue;

		/* create prototype */
		FUNC6(&enumep);

		FUNC2(&isc_if, &enumep, port);

		FUNC1(4, (&enumep, "examining ", "\n"));

		/*
		 * Check if and how we are going to use the interface.
		 */
		switch (FUNC7(enumep.name, &enumep.sin,
					 enumep.flags)) {

		case ACTION_IGNORE:
			FUNC0(4, ("ignoring interface %s (%s) - by nic rules\n",
				    enumep.name, FUNC23(&enumep.sin)));
			continue;

		case ACTION_LISTEN:
			FUNC0(4, ("listen interface %s (%s) - by nic rules\n",
				    enumep.name, FUNC23(&enumep.sin)));
			enumep.ignore_packets = ISC_FALSE;
			break;

		case ACTION_DROP:
			FUNC0(4, ("drop on interface %s (%s) - by nic rules\n",
				    enumep.name, FUNC23(&enumep.sin)));
			enumep.ignore_packets = ISC_TRUE;
			break;
		}

		 /* interfaces must be UP to be usable */
		if (!(enumep.flags & INT_UP)) {
			FUNC0(4, ("skipping interface %s (%s) - DOWN\n",
				    enumep.name, FUNC23(&enumep.sin)));
			continue;
		}

		/*
		 * skip any interfaces UP and bound to a wildcard
		 * address - some dhcp clients produce that in the
		 * wild
		 */
		if (FUNC11(&enumep.sin))
			continue;

		if (FUNC9(&enumep.sin, isc_if.name))
			continue;

		/*
		 * skip any address that is an invalid state to be used
		 */
		if (!FUNC10(&enumep.sin, isc_if.name))
			continue;

		/*
		 * map to local *address* in order to map all duplicate
		 * interfaces to an endpt structure with the appropriate
		 * socket.  Our name space is (ip-address), NOT
		 * (interface name, ip-address).
		 */
		ep = FUNC5(&enumep.sin, INT_WILDCARD);

		if (ep != NULL && FUNC19(ep)) {
			/*
			 * found existing and up to date interface -
			 * mark present.
			 */
			if (ep->phase != sys_interphase) {
				/*
				 * On a new round we reset the name so
				 * the interface name shows up again if
				 * this address is no longer shared.
				 * We reset ignore_packets from the
				 * new prototype to respect any runtime
				 * changes to the nic rules.
				 */
				FUNC24(ep->name, enumep.name,
					sizeof(ep->name));
				ep->ignore_packets =
					    enumep.ignore_packets;
			} else {
				/* name collision - rename interface */
				FUNC24(ep->name, "*multiple*",
					sizeof(ep->name));
			}

			FUNC1(4, (ep, "updating ",
					     " present\n"));

			if (ep->ignore_packets !=
			    enumep.ignore_packets) {
				/*
				 * We have conflicting configurations
				 * for the interface address. This is
				 * caused by using -I <interfacename>
				 * for an interface that shares its
				 * address with other interfaces. We
				 * can not disambiguate incoming
				 * packets delivered to this socket
				 * without extra syscalls/features.
				 * These are not (commonly) available.
				 * Note this is a more unusual
				 * configuration where several
				 * interfaces share an address but
				 * filtering via interface name is
				 * attempted.  We resolve the
				 * configuration conflict by disabling
				 * the processing of received packets.
				 * This leads to no service on the
				 * interface address where the conflict
				 * occurs.
				 */
				FUNC17(LOG_ERR,
					"WARNING: conflicting enable configuration for interfaces %s and %s for address %s - unsupported configuration - address DISABLED",
					enumep.name, ep->name,
					FUNC23(&enumep.sin));

				ep->ignore_packets = ISC_TRUE;
			}

			ep->phase = sys_interphase;

			ifi.action = IFS_EXISTS;
			ifi.ep = ep;
			if (receiver != NULL)
				(*receiver)(data, &ifi);
		} else {
			/*
			 * This is new or refreshing failed - add to
			 * our interface list.  If refreshing failed we
			 * will delete the interface structure in phase
			 * 2 as the interface was not marked current.
			 * We can bind to the address as the refresh
			 * code already closed the offending socket
			 */
			ep = FUNC3(port, &enumep);

			if (ep != NULL) {
				ifi.action = IFS_CREATED;
				ifi.ep = ep;
				if (receiver != NULL)
					(*receiver)(data, &ifi);

				new_interface_found = TRUE;
				FUNC1(3,
					(ep, "updating ",
					 " new - created\n"));
			} else {
				FUNC1(3,
					(&enumep, "updating ",
					 " new - creation FAILED"));

				FUNC17(LOG_INFO,
					"failed to init interface for address %s",
					FUNC23(&enumep.sin));
				continue;
			}
		}
	}

	FUNC14(&iter);

	/*
	 * phase 2 - delete gone interfaces - reassigning peers to
	 * other interfaces
	 */
	for (ep = ep_list; ep != NULL; ep = next_ep) {
		next_ep = ep->elink;

		/*
		 * if phase does not match sys_phase this interface was
		 * not enumerated during the last interface scan - so it
		 * is gone and will be deleted here unless it did not
		 * originate from interface enumeration (INT_WILDCARD,
		 * INT_MCASTIF).
		 */
		if (((INT_WILDCARD | INT_MCASTIF) & ep->flags) ||
		    ep->phase == sys_interphase)
			continue;

		FUNC1(3, (ep, "updating ",
				     "GONE - deleting\n"));
		FUNC20(ep);

		ifi.action = IFS_DELETED;
		ifi.ep = ep;
		if (receiver != NULL)
			(*receiver)(data, &ifi);

		/* disconnect peers from deleted endpt. */
		while (ep->peers != NULL)
			FUNC21(ep->peers, NULL);

		/*
		 * update globals in case we lose
		 * a loopback interface
		 */
		if (ep == loopback_interface)
			loopback_interface = NULL;

		FUNC4(ep);
	}

	/*
	 * phase 3 - re-configure as the world has possibly changed
	 *
	 * never ever make this conditional again - it is needed to track
	 * routing updates. see bug #2506
	 */
	FUNC18();

	if (broadcast_client_enabled)
		FUNC8();

	if (sys_bclient)
		FUNC8();

#ifdef MCAST
	/*
	 * Check multicast interfaces and try to join multicast groups if
         * not joined yet.
         */
	for (ep = ep_list; ep != NULL; ep = ep->elink) {
		remaddr_t *entry;

		if (!(INT_MCASTIF & ep->flags) || (INT_MCASTOPEN & ep->flags))
			continue;

		/* Find remote address that was linked to this interface */
		for (entry = remoteaddr_list;
		     entry != NULL;
		     entry = entry->link) {
			if (entry->ep == ep) {
				if (socket_multicast_enable(ep, &entry->addr)) {
					msyslog(LOG_INFO,
						"Joined %s socket to multicast group %s",
						stoa(&ep->sin),
						stoa(&entry->addr));
				}
				break;
			}
		}
	}
#endif /* MCAST */

	return new_interface_found;
}