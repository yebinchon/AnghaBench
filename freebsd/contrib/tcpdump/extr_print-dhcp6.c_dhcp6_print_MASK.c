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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct in6_addr {int dummy; } ;
struct dhcp6_relay {int /*<<< orphan*/  dh6relay_peeraddr; int /*<<< orphan*/  dh6relay_linkaddr; } ;
struct dhcp6 {scalar_t__ dh6_msgtype; int /*<<< orphan*/  dh6_xid; } ;
struct TYPE_6__ {int /*<<< orphan*/  ndo_vflag; scalar_t__ ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;
typedef  int /*<<< orphan*/  addr6 ;

/* Variables and functions */
 scalar_t__ DH6_RELAY_FORW ; 
 scalar_t__ DH6_RELAY_REPLY ; 
 int DH6_XIDMASK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dh6_msgtype_str ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC5 (struct in6_addr*,int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

void
FUNC7(netdissect_options *ndo,
            const u_char *cp, u_int length)
{
	const struct dhcp6 *dh6;
	const struct dhcp6_relay *dh6relay;
	const u_char *ep;
	const u_char *extp;
	const char *name;

	FUNC1((ndo, "dhcp6"));

	ep = (const u_char *)ndo->ndo_snapend;
	if (cp + length < ep)
		ep = cp + length;

	dh6 = (const struct dhcp6 *)cp;
	dh6relay = (const struct dhcp6_relay *)cp;
	FUNC2(dh6->dh6_xid);
	name = FUNC6(dh6_msgtype_str, "msgtype-%u", dh6->dh6_msgtype);

	if (!ndo->ndo_vflag) {
		FUNC1((ndo, " %s", name));
		return;
	}

	/* XXX relay agent messages have to be handled differently */

	FUNC1((ndo, " %s (", name));	/*)*/
	if (dh6->dh6_msgtype != DH6_RELAY_FORW &&
	    dh6->dh6_msgtype != DH6_RELAY_REPLY) {
		FUNC1((ndo, "xid=%x", FUNC0(&dh6->dh6_xid) & DH6_XIDMASK));
		extp = (const u_char *)(dh6 + 1);
		FUNC3(ndo, extp, ep);
	} else {		/* relay messages */
		struct in6_addr addr6;

		FUNC2(dh6relay->dh6relay_peeraddr);

		FUNC5(&addr6, dh6relay->dh6relay_linkaddr, sizeof (addr6));
		FUNC1((ndo, "linkaddr=%s", FUNC4(ndo, &addr6)));

		FUNC5(&addr6, dh6relay->dh6relay_peeraddr, sizeof (addr6));
		FUNC1((ndo, " peeraddr=%s", FUNC4(ndo, &addr6)));

		FUNC3(ndo, (const u_char *)(dh6relay + 1), ep);
	}
	/*(*/
	FUNC1((ndo, ")"));
	return;

trunc:
	FUNC1((ndo, "[|dhcp6]"));
}