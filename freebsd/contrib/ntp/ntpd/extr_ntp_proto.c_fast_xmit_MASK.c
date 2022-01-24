#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int32 ;
struct pkt {int /*<<< orphan*/ * exten; int /*<<< orphan*/  xmt; int /*<<< orphan*/  rec; int /*<<< orphan*/  org; int /*<<< orphan*/  reftime; int /*<<< orphan*/  refid; void* rootdisp; void* rootdelay; int /*<<< orphan*/  precision; void* ppoll; int /*<<< orphan*/  stratum; void* li_vn_mode; } ;
struct recvbuf {size_t recv_length; int /*<<< orphan*/  recv_srcadr; TYPE_1__* dstadr; int /*<<< orphan*/  recv_time; struct pkt recv_pkt; } ;
struct exten {int dummy; } ;
typedef  int /*<<< orphan*/  l_fp ;
typedef  scalar_t__ keyid_t ;
struct TYPE_5__ {scalar_t__ in_progress; int /*<<< orphan*/  offset; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  sin; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_RESP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int INT_MCASTOPEN ; 
 int /*<<< orphan*/  LEAP_NOTINSYNC ; 
 size_t LEN_PKT_NOMAC ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t MAX_MAC_LEN ; 
 scalar_t__ NTP_MAXKEY ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int RES_KOD ; 
 int RES_MSSNTP ; 
 int /*<<< orphan*/  STRATUM_PKT_UNSPEC ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,struct pkt*,struct recvbuf*,size_t,struct exten*,scalar_t__) ; 
 int /*<<< orphan*/  current_time ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 TYPE_2__ leap_smear ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 void* FUNC18 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ntp_minpoll ; 
 int /*<<< orphan*/  FUNC22 (struct recvbuf*,int,scalar_t__,int,struct pkt*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,struct pkt*,size_t) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sys_authdelay ; 
 int /*<<< orphan*/  sys_kodsent ; 
 int /*<<< orphan*/  sys_precision ; 
 scalar_t__ sys_private ; 
 int /*<<< orphan*/  sys_refid ; 
 int /*<<< orphan*/  sys_reftime ; 
 int /*<<< orphan*/  sys_rootdelay ; 
 int /*<<< orphan*/  sys_rootdisp ; 
 int /*<<< orphan*/  sys_stratum ; 
 int /*<<< orphan*/  xmt_leap ; 

__attribute__((used)) static void
FUNC26(
	struct recvbuf *rbufp,	/* receive packet pointer */
	int	xmode,		/* receive mode */
	keyid_t	xkeyid,		/* transmit key ID */
	int	flags		/* restrict mask */
	)
{
	struct pkt xpkt;	/* transmit packet structure */
	struct pkt *rpkt;	/* receive packet structure */
	l_fp	xmt_tx, xmt_ty;
	size_t	sendlen;
#ifdef AUTOKEY
	u_int32	temp32;
#endif

	/*
	 * Initialize transmit packet header fields from the receive
	 * buffer provided. We leave the fields intact as received, but
	 * set the peer poll at the maximum of the receive peer poll and
	 * the system minimum poll (ntp_minpoll). This is for KoD rate
	 * control and not strictly specification compliant, but doesn't
	 * break anything.
	 *
	 * If the gazinta was from a multicast address, the gazoutta
	 * must go out another way.
	 */
	rpkt = &rbufp->recv_pkt;
	if (rbufp->dstadr->flags & INT_MCASTOPEN)
		rbufp->dstadr = FUNC13(&rbufp->recv_srcadr);

	/*
	 * If this is a kiss-o'-death (KoD) packet, show leap
	 * unsynchronized, stratum zero, reference ID the four-character
	 * kiss code and system root delay. Note we don't reveal the
	 * local time, so these packets can't be used for
	 * synchronization.
	 */
	if (flags & RES_KOD) {
		sys_kodsent++;
		xpkt.li_vn_mode = FUNC6(LEAP_NOTINSYNC,
		    FUNC7(rpkt->li_vn_mode), xmode);
		xpkt.stratum = STRATUM_PKT_UNSPEC;
		xpkt.ppoll = FUNC18(rpkt->ppoll, ntp_minpoll);
		xpkt.precision = rpkt->precision;
		FUNC19(&xpkt.refid, "RATE", 4);
		xpkt.rootdelay = rpkt->rootdelay;
		xpkt.rootdisp = rpkt->rootdisp;
		xpkt.reftime = rpkt->reftime;
		xpkt.org = rpkt->xmt;
		xpkt.rec = rpkt->xmt;
		xpkt.xmt = rpkt->xmt;

	/*
	 * This is a normal packet. Use the system variables.
	 */
	} else {
#ifdef LEAP_SMEAR
		/*
		 * Make copies of the variables which can be affected by smearing.
		 */
		l_fp this_ref_time;
		l_fp this_recv_time;
#endif

		/*
		 * If we are inside the leap smear interval we add the current smear offset to
		 * the packet receive time, to the packet transmit time, and eventually to the
		 * reftime to make sure the reftime isn't later than the transmit/receive times.
		 */
		xpkt.li_vn_mode = FUNC6(xmt_leap,
		    FUNC7(rpkt->li_vn_mode), xmode);

		xpkt.stratum = FUNC8(sys_stratum);
		xpkt.ppoll = FUNC18(rpkt->ppoll, ntp_minpoll);
		xpkt.precision = sys_precision;
		xpkt.refid = sys_refid;
		xpkt.rootdelay = FUNC4(FUNC1(sys_rootdelay));
		xpkt.rootdisp = FUNC4(FUNC2(sys_rootdisp));

#ifdef LEAP_SMEAR
		this_ref_time = sys_reftime;
		if (leap_smear.in_progress) {
			leap_smear_add_offs(&this_ref_time, NULL);
			xpkt.refid = convertLFPToRefID(leap_smear.offset);
			DPRINTF(2, ("fast_xmit: leap_smear.in_progress: refid %8x, smear %s\n",
				ntohl(xpkt.refid),
				lfptoa(&leap_smear.offset, 8)
				));
		}
		HTONL_FP(&this_ref_time, &xpkt.reftime);
#else
		FUNC3(&sys_reftime, &xpkt.reftime);
#endif

		xpkt.org = rpkt->xmt;

#ifdef LEAP_SMEAR
		this_recv_time = rbufp->recv_time;
		if (leap_smear.in_progress)
			leap_smear_add_offs(&this_recv_time, NULL);
		HTONL_FP(&this_recv_time, &xpkt.rec);
#else
		FUNC3(&rbufp->recv_time, &xpkt.rec);
#endif

		FUNC14(&xmt_tx);
#ifdef LEAP_SMEAR
		if (leap_smear.in_progress)
			leap_smear_add_offs(&xmt_tx, &this_recv_time);
#endif
		FUNC3(&xmt_tx, &xpkt.xmt);
	}

#ifdef HAVE_NTP_SIGND
	if (flags & RES_MSSNTP) {
		send_via_ntp_signd(rbufp, xmode, xkeyid, flags, &xpkt);
		return;
	}
#endif /* HAVE_NTP_SIGND */

	/*
	 * If the received packet contains a MAC, the transmitted packet
	 * is authenticated and contains a MAC. If not, the transmitted
	 * packet is not authenticated.
	 */
	sendlen = LEN_PKT_NOMAC;
	if (rbufp->recv_length == sendlen) {
		FUNC23(&rbufp->recv_srcadr, rbufp->dstadr, 0, &xpkt,
		    sendlen);
		FUNC0(1, ("fast_xmit: at %ld %s->%s mode %d len %lu\n",
			    current_time, FUNC25(&rbufp->dstadr->sin),
			    FUNC25(&rbufp->recv_srcadr), xmode,
			    (u_long)sendlen));
		return;
	}

	/*
	 * The received packet contains a MAC, so the transmitted packet
	 * must be authenticated. For symmetric key cryptography, use
	 * the predefined and trusted symmetric keys to generate the
	 * cryptosum. For autokey cryptography, use the server private
	 * value to generate the cookie, which is unique for every
	 * source-destination-key ID combination.
	 */
#ifdef AUTOKEY
	if (xkeyid > NTP_MAXKEY) {
		keyid_t cookie;

		/*
		 * The only way to get here is a reply to a legitimate
		 * client request message, so the mode must be
		 * MODE_SERVER. If an extension field is present, there
		 * can be only one and that must be a command. Do what
		 * needs, but with private value of zero so the poor
		 * jerk can decode it. If no extension field is present,
		 * use the cookie to generate the session key.
		 */
		cookie = session_key(&rbufp->recv_srcadr,
		    &rbufp->dstadr->sin, 0, sys_private, 0);
		if ((size_t)rbufp->recv_length > sendlen + MAX_MAC_LEN) {
			session_key(&rbufp->dstadr->sin,
			    &rbufp->recv_srcadr, xkeyid, 0, 2);
			temp32 = CRYPTO_RESP;
			rpkt->exten[0] |= htonl(temp32);
			sendlen += crypto_xmit(NULL, &xpkt, rbufp,
			    sendlen, (struct exten *)rpkt->exten,
			    cookie);
		} else {
			session_key(&rbufp->dstadr->sin,
			    &rbufp->recv_srcadr, xkeyid, cookie, 2);
		}
	}
#endif	/* AUTOKEY */
	FUNC14(&xmt_tx);
	sendlen += FUNC9(xkeyid, (u_int32 *)&xpkt, sendlen);
#ifdef AUTOKEY
	if (xkeyid > NTP_MAXKEY)
		authtrust(xkeyid, 0);
#endif	/* AUTOKEY */
	FUNC23(&rbufp->recv_srcadr, rbufp->dstadr, 0, &xpkt, sendlen);
	FUNC14(&xmt_ty);
	FUNC5(&xmt_ty, &xmt_tx);
	sys_authdelay = xmt_ty;
	FUNC0(1, ("fast_xmit: at %ld %s->%s mode %d keyid %08x len %lu\n",
		    current_time, FUNC20(&rbufp->dstadr->sin),
		    FUNC20(&rbufp->recv_srcadr), xmode, xkeyid,
		    (u_long)sendlen));
}