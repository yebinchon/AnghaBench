#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ttl ;
struct pkt {int /*<<< orphan*/  exten; int /*<<< orphan*/  refid; int /*<<< orphan*/  rootdisp; int /*<<< orphan*/  rootdelay; int /*<<< orphan*/  precision; int /*<<< orphan*/  ppoll; int /*<<< orphan*/  stratum; int /*<<< orphan*/  li_vn_mode; int /*<<< orphan*/  xmt; int /*<<< orphan*/  rec; int /*<<< orphan*/  org; } ;
struct TYPE_16__ {int /*<<< orphan*/  sa; } ;
struct interface {int last_ttl; TYPE_2__ sin; struct interface* mclink; int /*<<< orphan*/  sent; int /*<<< orphan*/  notsent; int /*<<< orphan*/  fd; } ;
typedef  TYPE_2__ sockaddr_u ;
struct TYPE_15__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_17__ {int /*<<< orphan*/  member_1; TYPE_1__ member_0; } ;
typedef  TYPE_3__ l_fp ;
typedef  struct interface endpt ;
typedef  int /*<<< orphan*/  cttl ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  IPV6_MULTICAST_HOPS ; 
 int /*<<< orphan*/  IP_MULTICAST_TTL ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ MIN_V4_PKT_LEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (struct interface*,int /*<<< orphan*/ ,struct pkt*,size_t,TYPE_2__*) ; 
 struct interface* mc4_list ; 
 struct interface* mc6_list ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  packets_notsent ; 
 int /*<<< orphan*/  packets_sent ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC13 (TYPE_2__*,struct interface*,struct pkt*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 

void
FUNC15(
	sockaddr_u *		dest,
	struct interface *	ep,
	int			ttl,
	struct pkt *		pkt,
	int			len
	)
{
	endpt *	src;
	int	ismcast;
	int	cc;
	int	rc;
	u_char	cttl;
	l_fp	fp_zero = { 0 , 0 };

	ismcast = FUNC3(dest);
	if (!ismcast)
		src = ep;
	else
		src = (FUNC2(dest))
			  ? mc4_list
			  : mc6_list;

	if (NULL == src) {
		/*
		 * unbound peer - drop request and wait for better
		 * network conditions
		 */
		FUNC1(2, ("%ssendpkt(dst=%s, ttl=%d, len=%d): no interface - IGNORED\n",
			    ismcast ? "\tMCAST\t***** " : "",
			    FUNC14(dest), ttl, len));
		return;
	}

	do {
		FUNC1(2, ("%ssendpkt(%d, dst=%s, src=%s, ttl=%d, len=%d)\n",
			    ismcast ? "\tMCAST\t***** " : "", src->fd,
			    FUNC14(dest), FUNC14(&src->sin), ttl, len));
#ifdef MCAST
		/*
		 * for the moment we use the bcast option to set multicast ttl
		 */
		if (ismcast && ttl > 0 && ttl != src->last_ttl) {
			/*
			 * set the multicast ttl for outgoing packets
			 */
			switch (AF(&src->sin)) {

			case AF_INET :
				cttl = (u_char)ttl;
				rc = setsockopt(src->fd, IPPROTO_IP,
						IP_MULTICAST_TTL,
						(void *)&cttl,
						sizeof(cttl));
				break;

# ifdef INCLUDE_IPV6_SUPPORT
			case AF_INET6 :
				rc = setsockopt(src->fd, IPPROTO_IPV6,
						 IPV6_MULTICAST_HOPS,
						 (void *)&ttl,
						 sizeof(ttl));
				break;
# endif	/* INCLUDE_IPV6_SUPPORT */

			default:
				rc = 0;
			}

			if (!rc)
				src->last_ttl = ttl;
			else
				msyslog(LOG_ERR,
					"setsockopt IP_MULTICAST_TTL/IPV6_MULTICAST_HOPS fails on address %s: %m",
					stoa(&src->sin));
		}
#endif	/* MCAST */

#ifdef SIM
		cc = simulate_server(dest, src, pkt);
#elif defined(HAVE_IO_COMPLETION_PORT)
		cc = io_completion_port_sendto(src, src->fd, pkt,
			(size_t)len, (sockaddr_u *)&dest->sa);
#else
		cc = FUNC11(src->fd, (char *)pkt, (u_int)len, 0,
			    &dest->sa, FUNC7(dest));
#endif
		if (cc == -1) {
			src->notsent++;
			packets_notsent++;
		} else	{
			src->sent++;
			packets_sent++;
		}
		if (ismcast)
			src = src->mclink;
	} while (ismcast && src != NULL);

	/* HMS: pkt->rootdisp is usually random here */
	FUNC10(src ? &src->sin : NULL, dest,
			&pkt->org, &pkt->rec, &pkt->xmt, &fp_zero,
			FUNC5(pkt->li_vn_mode),
			FUNC6(pkt->li_vn_mode),
			FUNC4(pkt->li_vn_mode),
			pkt->stratum,
			pkt->ppoll, pkt->precision,
			pkt->rootdelay, pkt->rootdisp, pkt->refid,
			len - MIN_V4_PKT_LEN, (u_char *)&pkt->exten);

	return;
}