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
struct iodesc {int /*<<< orphan*/  myip; int /*<<< orphan*/ * myea; } ;
struct ether_arp {scalar_t__ arp_hrd; scalar_t__ arp_pro; int arp_hln; int arp_pln; scalar_t__ arp_op; int /*<<< orphan*/ * arp_tha; int /*<<< orphan*/ * arp_spa; int /*<<< orphan*/ * arp_sha; int /*<<< orphan*/ * arp_tpa; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  ARPOP_REPLY ; 
 int /*<<< orphan*/  ARPOP_REQUEST ; 
 int /*<<< orphan*/  ETHERTYPE_ARP ; 
 int /*<<< orphan*/  ETHERTYPE_IP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ debug ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct iodesc*,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC6(struct iodesc *d, void *pkt)
{
	struct ether_arp *arp = pkt;

	if (arp->arp_hrd != FUNC3(ARPHRD_ETHER) ||
	    arp->arp_pro != FUNC3(ETHERTYPE_IP) ||
	    arp->arp_hln != sizeof(arp->arp_sha) ||
	    arp->arp_pln != sizeof(arp->arp_spa) )
	{
#ifdef ARP_DEBUG
		if (debug)
			printf("arp_reply: bad hrd/pro/hln/pln\n");
#endif
		return;
	}

	if (arp->arp_op != FUNC3(ARPOP_REQUEST)) {
#ifdef ARP_DEBUG
		if (debug)
			printf("arp_reply: not request!\n");
#endif
		return;
	}

	/* If we are not the target, ignore the request. */
	if (FUNC0(arp->arp_tpa, &d->myip, sizeof(arp->arp_tpa)))
		return;

#ifdef ARP_DEBUG
	if (debug) {
		printf("arp_reply: to %s\n", ether_sprintf(arp->arp_sha));
	}
#endif

	arp->arp_op = FUNC3(ARPOP_REPLY);
	/* source becomes target */
	FUNC1(arp->arp_sha, arp->arp_tha, sizeof(arp->arp_tha));
	FUNC1(arp->arp_spa, arp->arp_tpa, sizeof(arp->arp_tpa));
	/* here becomes source */
	FUNC1(d->myea,  arp->arp_sha, sizeof(arp->arp_sha));
	FUNC1(&d->myip, arp->arp_spa, sizeof(arp->arp_spa));

	/*
	 * No need to get fancy here.  If the send fails, the
	 * requestor will just ask again.
	 */
	(void) FUNC5(d, pkt, sizeof(*arp) + 18,
	                 arp->arp_tha, ETHERTYPE_ARP);
}