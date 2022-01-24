#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32 ;
typedef  int u_int ;
typedef  scalar_t__ u_char ;
struct peer {scalar_t__ cast_flags; int associd; int flags; scalar_t__ minpoll; scalar_t__ maxpoll; scalar_t__ hpoll; scalar_t__ keyid; int /*<<< orphan*/  ttl; scalar_t__ version; scalar_t__ hmode; int /*<<< orphan*/  srcadr; TYPE_1__* dstadr; void* timereceived; void* timereachable; void* timereset; int /*<<< orphan*/  precision; void* ident; void* hostname; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;
typedef  scalar_t__ keyid_t ;
struct TYPE_9__ {int /*<<< orphan*/  sin; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ endpt ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FLAG_PREEMPT ; 
 int FLAG_SKEY ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct peer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ MDF_ACAST ; 
 scalar_t__ MDF_BCAST ; 
 scalar_t__ MDF_BCLNT ; 
 scalar_t__ MDF_MCAST ; 
 scalar_t__ MDF_POOL ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int NTP_HASH_MASK ; 
 scalar_t__ NTP_MAXDPOLL ; 
 scalar_t__ NTP_MAXKEY ; 
 int /*<<< orphan*/  NTP_MAXPOLL ; 
 scalar_t__ NTP_MINDPOLL ; 
 int /*<<< orphan*/  NTP_MINPOLL ; 
 int /*<<< orphan*/  PEVNT_MOBIL ; 
 int /*<<< orphan*/  FUNC7 (struct peer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adr_link ; 
 int /*<<< orphan*/  aid_link ; 
 int /*<<< orphan*/ * assoc_hash ; 
 int /*<<< orphan*/ * assoc_hash_count ; 
 int /*<<< orphan*/  crypto_flags ; 
 scalar_t__ current_association_ID ; 
 void* current_time ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 void* FUNC10 (char const*) ; 
 struct peer* FUNC11 (int /*<<< orphan*/ *,char const*,struct peer*,scalar_t__,scalar_t__,int*) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct peer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ mode_ntpdate ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct peer*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  p_link ; 
 int /*<<< orphan*/  peer_associations ; 
 int /*<<< orphan*/  FUNC20 (struct peer*,char*) ; 
 int /*<<< orphan*/  peer_free ; 
 scalar_t__ peer_free_count ; 
 int /*<<< orphan*/ * peer_hash ; 
 int /*<<< orphan*/ * peer_hash_count ; 
 int /*<<< orphan*/  peer_list ; 
 int /*<<< orphan*/  peer_ntpdate ; 
 int /*<<< orphan*/  peer_preempt ; 
 int /*<<< orphan*/  FUNC21 (struct peer*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC23 (struct peer*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (struct peer*,int /*<<< orphan*/ *) ; 
 char const* FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sys_precision ; 

struct peer *
FUNC26(
	sockaddr_u *	srcadr,
	const char *	hostname,
	endpt *		dstadr,
	int		ippeerlimit,
	u_char		hmode,
	u_char		version,
	u_char		minpoll,
	u_char		maxpoll,
	u_int		flags,
	u_char		cast_flags,
	u_int32		ttl,
	keyid_t		key,
	const char *	ident
	)
{
	struct peer *	peer;
	u_int		hash;
	int		ip_count = 0;


	FUNC1(srcadr);

#ifdef AUTOKEY
	/*
	 * If Autokey is requested but not configured, complain loudly.
	 */
	if (!crypto_flags) {
		if (key > NTP_MAXKEY) {
			return (NULL);

		} else if (flags & FLAG_SKEY) {
			msyslog(LOG_ERR, "Autokey not configured");
			return (NULL);
		} 
	}
#endif	/* AUTOKEY */

	/*
	 * For now only pool associations have a hostname.
	 */
	FUNC3(NULL == hostname || (MDF_POOL & cast_flags));

	/*
	 * First search from the beginning for an association with given
	 * remote address and mode. If an interface is given, search
	 * from there to find the association which matches that
	 * destination. If the given interface is "any", track down the
	 * actual interface, because that's what gets put into the peer
	 * structure.
	 */
	if (dstadr != NULL) {
		peer = FUNC11(srcadr, hostname, NULL, hmode,
					cast_flags, &ip_count);
		while (peer != NULL) {
			if (   peer->dstadr == dstadr
			    || (   (MDF_BCLNT & cast_flags)
				&& (MDF_BCLNT & peer->cast_flags)))
				break;

			if (dstadr == FUNC0(srcadr) &&
			    peer->dstadr == FUNC12(srcadr))
				break;

			peer = FUNC11(srcadr, hostname, peer,
						hmode, cast_flags, &ip_count);
		}
	} else {
		/* no endpt address given */
		peer = FUNC11(srcadr, hostname, NULL, hmode,
					cast_flags, &ip_count);
	}

	/*
	 * If a peer is found, this would be a duplicate and we don't
	 * allow that. This avoids duplicate ephemeral (broadcast/
	 * multicast) and preemptible (manycast and pool) client
	 * associations.
	 */
	if (peer != NULL) {
		FUNC2(2, ("newpeer(%s) found existing association\n",
			(hostname)
			    ? hostname
			    : FUNC25(srcadr)));
		return NULL;
	}

FUNC2(1, ("newpeer(%s) found no existing and %d other associations\n",
		(hostname)
		    ? hostname
		    : FUNC25(srcadr),
		ip_count));

	/* Check ippeerlimit wrt ip_count */
	if (ippeerlimit > -1) {
		if (ip_count + 1 > ippeerlimit) {
			FUNC2(2, ("newpeer(%s) denied - ippeerlimit %d\n",
				(hostname)
				    ? hostname
				    : FUNC25(srcadr),
				ippeerlimit));
			return NULL;
		}
	} else {
		FUNC2(1, ("newpeer(%s) - ippeerlimit %d ignored\n",
			(hostname)
			    ? hostname
			    : FUNC25(srcadr),
			ippeerlimit));
	}

	/*
	 * Allocate a new peer structure. Some dirt here, since some of
	 * the initialization requires knowlege of our system state.
	 */
	if (peer_free_count == 0)
		FUNC14();
	FUNC7(peer, peer_free, p_link);
	FUNC3(peer != NULL);
	peer_free_count--;
	peer_associations++;
	if (FLAG_PREEMPT & flags)
		peer_preempt++;

	/*
	 * Assign an association ID and increment the system variable.
	 */
	peer->associd = current_association_ID;
	if (++current_association_ID == 0)
		++current_association_ID;

	peer->srcadr = *srcadr;
	if (hostname != NULL)
		peer->hostname = FUNC10(hostname);
	peer->hmode = hmode;
	peer->version = version;
	peer->flags = flags;
	peer->cast_flags = cast_flags;
	FUNC24(peer, 
		       FUNC23(peer, srcadr, dstadr));

	/*
	 * It is an error to set minpoll less than NTP_MINPOLL or to
	 * set maxpoll greater than NTP_MAXPOLL. However, minpoll is
	 * clamped not greater than NTP_MAXPOLL and maxpoll is clamped
	 * not less than NTP_MINPOLL without complaint. Finally,
	 * minpoll is clamped not greater than maxpoll.
	 */
	if (minpoll == 0)
		peer->minpoll = NTP_MINDPOLL;
	else
		peer->minpoll = FUNC17(minpoll, NTP_MAXPOLL);
	if (maxpoll == 0)
		peer->maxpoll = NTP_MAXDPOLL;
	else
		peer->maxpoll = FUNC16(maxpoll, NTP_MINPOLL);
	if (peer->minpoll > peer->maxpoll)
		peer->minpoll = peer->maxpoll;

	if (peer->dstadr != NULL)
		FUNC2(3, ("newpeer(%s): using fd %d and our addr %s\n",
			FUNC25(srcadr), peer->dstadr->fd,
			FUNC25(&peer->dstadr->sin)));
	else
		FUNC2(3, ("newpeer(%s): local interface currently not bound\n",
			FUNC25(srcadr)));	

	/*
	 * Broadcast needs the socket enabled for broadcast
	 */
	if ((MDF_BCAST & cast_flags) && peer->dstadr != NULL)
		FUNC8(peer->dstadr, srcadr);

	/*
	 * Multicast needs the socket interface enabled for multicast
	 */
	if ((MDF_MCAST & cast_flags) && peer->dstadr != NULL)
		FUNC9(peer->dstadr, srcadr);

#ifdef AUTOKEY
	if (key > NTP_MAXKEY)
		peer->flags |= FLAG_SKEY;
#endif	/* AUTOKEY */
	peer->ttl = ttl;
	peer->keyid = key;
	if (ident != NULL)
		peer->ident = FUNC10(ident);
	peer->precision = sys_precision;
	peer->hpoll = peer->minpoll;
	if (cast_flags & MDF_ACAST)
		FUNC20(peer, "ACST");
	else if (cast_flags & MDF_POOL)
		FUNC20(peer, "POOL");
	else if (cast_flags & MDF_MCAST)
		FUNC20(peer, "MCST");
	else if (cast_flags & MDF_BCAST)
		FUNC20(peer, "BCST");
	else
		FUNC20(peer, "INIT");
	if (mode_ntpdate)
		peer_ntpdate++;

	/*
	 * Note time on statistics timers.
	 */
	peer->timereset = current_time;
	peer->timereachable = current_time;
	peer->timereceived = current_time;

	if (FUNC4(&peer->srcadr)) {
#ifdef REFCLOCK
		/*
		 * We let the reference clock support do clock
		 * dependent initialization.  This includes setting
		 * the peer timer, since the clock may have requirements
		 * for this.
		 */
		if (maxpoll == 0)
			peer->maxpoll = peer->minpoll;
		if (!refclock_newpeer(peer)) {
			/*
			 * Dump it, something screwed up
			 */
			set_peerdstadr(peer, NULL);
			free_peer(peer, 0);
			return NULL;
		}
#else /* REFCLOCK */
		FUNC19(LOG_ERR, "refclock %s isn't supported. ntpd was compiled without refclock support.",
			FUNC25(&peer->srcadr));
		FUNC24(peer, NULL);
		FUNC13(peer, 0);
		return NULL;
#endif /* REFCLOCK */
	}

	/*
	 * Put the new peer in the hash tables.
	 */
	hash = FUNC6(&peer->srcadr);
	FUNC5(peer_hash[hash], peer, adr_link);
	peer_hash_count[hash]++;
	hash = peer->associd & NTP_HASH_MASK;
	FUNC5(assoc_hash[hash], peer, aid_link);
	assoc_hash_count[hash]++;
	FUNC5(peer_list, peer, p_link);

	FUNC22(&peer->srcadr, 0, 0);
	FUNC18(PEVNT_MOBIL, peer, "assoc %d", peer->associd);
	FUNC2(1, ("newpeer: %s->%s mode %u vers %u poll %u %u flags 0x%x 0x%x ttl %u key %08x\n",
	    FUNC15(peer->dstadr), FUNC25(&peer->srcadr), peer->hmode,
	    peer->version, peer->minpoll, peer->maxpoll, peer->flags,
	    peer->cast_flags, peer->ttl, peer->keyid));
	return peer;
}