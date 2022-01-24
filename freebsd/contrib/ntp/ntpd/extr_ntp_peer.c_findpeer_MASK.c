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
typedef  size_t u_int ;
struct pkt {int /*<<< orphan*/  org; } ;
struct recvbuf {scalar_t__ dstadr; struct pkt recv_pkt; int /*<<< orphan*/  recv_srcadr; } ;
struct peer {scalar_t__ hmode; scalar_t__ dstadr; int /*<<< orphan*/  aorg; int /*<<< orphan*/  srcadr; struct peer* adr_link; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;
typedef  int /*<<< orphan*/  l_fp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int AM_ERR ; 
 int AM_NOMATCH ; 
 int AM_PROCPKT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__,int) ; 
 scalar_t__ MODE_BCLIENT ; 
 int MODE_SERVER ; 
 scalar_t__ NO_PEER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct recvbuf*) ; 
 int /*<<< orphan*/  findpeer_calls ; 
 struct peer** peer_hash ; 

struct peer *
FUNC6(
	struct recvbuf *rbufp,
	int		pkt_mode,
	int *		action
	)
{
	struct peer *	p;
	sockaddr_u *	srcadr;
	u_int		hash;
	struct pkt *	pkt;
	l_fp		pkt_org;

	findpeer_calls++;
	srcadr = &rbufp->recv_srcadr;
	hash = FUNC4(srcadr);
	for (p = peer_hash[hash]; p != NULL; p = p->adr_link) {

		/* [Bug 3072] ensure interface of peer matches */
		/* [Bug 3356] ... if NOT a broadcast peer!     */
		if (p->hmode != MODE_BCLIENT && p->dstadr != rbufp->dstadr)
			continue;

		/* ensure peer source address matches */
		if ( ! FUNC0(srcadr, &p->srcadr))
			continue;
		
		/* If the association matching rules determine that this
		 * is not a valid combination, then look for the next
		 * valid peer association.
		 */
		*action = FUNC2(p->hmode, pkt_mode);

		/* A response to our manycastclient solicitation might
		 * be misassociated with an ephemeral peer already spun
		 * for the server.  If the packet's org timestamp
		 * doesn't match the peer's, check if it matches the
		 * ACST prototype peer's.  If so it is a redundant
		 * solicitation response, return AM_ERR to discard it.
		 * [Bug 1762]
		 */
		if (MODE_SERVER == pkt_mode && AM_PROCPKT == *action) {
			pkt = &rbufp->recv_pkt;
			FUNC3(&pkt->org, &pkt_org);
			if (!FUNC1(&p->aorg, &pkt_org) &&
			    FUNC5(rbufp))
				*action = AM_ERR;
		}

		/* if an error was returned, exit back right here. */
		if (*action == AM_ERR)
			return NULL;

		/* if a match is found, we stop our search. */
		if (*action != AM_NOMATCH)
			break;
	}

	/* If no matching association is found... */
	if (NULL == p)
		*action = FUNC2(NO_PEER, pkt_mode);

	return p;
}