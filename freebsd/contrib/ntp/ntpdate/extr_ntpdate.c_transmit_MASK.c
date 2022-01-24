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
typedef  int /*<<< orphan*/  u_int32 ;
struct server {scalar_t__ filter_nextpt; scalar_t__ xmtcnt; scalar_t__ event_time; int /*<<< orphan*/  srcadr; int /*<<< orphan*/  xmt; } ;
struct pkt {int /*<<< orphan*/  xmt; void** exten; int /*<<< orphan*/  rec; int /*<<< orphan*/  org; int /*<<< orphan*/  reftime; void* refid; void* rootdisp; void* rootdelay; int /*<<< orphan*/  precision; int /*<<< orphan*/  ppoll; int /*<<< orphan*/  stratum; int /*<<< orphan*/  li_vn_mode; } ;
typedef  int /*<<< orphan*/  l_fp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LEAP_NOTINSYNC ; 
 size_t LEN_PKT_NOMAC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MODE_CLIENT ; 
 int /*<<< orphan*/  NTPDATE_DISP ; 
 int /*<<< orphan*/  NTPDATE_DISTANCE ; 
 int /*<<< orphan*/  NTPDATE_PRECISION ; 
 int /*<<< orphan*/  NTPDATE_REFID ; 
 int /*<<< orphan*/  NTP_MINPOLL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STRATUM_UNSPEC ; 
 size_t FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  complete_servers ; 
 scalar_t__ current_time ; 
 int debug ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct pkt*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct server*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sys_authdelay ; 
 scalar_t__ sys_authenticate ; 
 int /*<<< orphan*/  sys_authkey ; 
 int sys_samples ; 
 scalar_t__ sys_timeout ; 
 int /*<<< orphan*/  sys_version ; 

__attribute__((used)) static void
FUNC12(
	register struct server *server
	)
{
	struct pkt xpkt;

	if (server->filter_nextpt < server->xmtcnt) {
		l_fp ts;
		/*
		 * Last message to this server timed out.  Shift
		 * zeros into the filter.
		 */
		FUNC2(&ts);
		FUNC10(server, 0, &ts, 0);
	}

	if ((int)server->filter_nextpt >= sys_samples) {
		/*
		 * Got all the data we need.  Mark this guy
		 * completed and return.
		 */
		server->event_time = 0;
		complete_servers++;
		return;
	}

	if (debug)
		FUNC8("transmit(%s)\n", FUNC11(&server->srcadr));

	/*
	 * If we're here, send another message to the server.  Fill in
	 * the packet and let 'er rip.
	 */
	xpkt.li_vn_mode = FUNC3(LEAP_NOTINSYNC,
					 sys_version, MODE_CLIENT);
	xpkt.stratum = FUNC4(STRATUM_UNSPEC);
	xpkt.ppoll = NTP_MINPOLL;
	xpkt.precision = NTPDATE_PRECISION;
	xpkt.rootdelay = FUNC7(NTPDATE_DISTANCE);
	xpkt.rootdisp = FUNC7(NTPDATE_DISP);
	xpkt.refid = FUNC7(NTPDATE_REFID);
	FUNC2(&xpkt.reftime);
	FUNC2(&xpkt.org);
	FUNC2(&xpkt.rec);

	/*
	 * Determine whether to authenticate or not.	If so,
	 * fill in the extended part of the packet and do it.
	 * If not, just timestamp it and send it away.
	 */
	if (sys_authenticate) {
		size_t len;

		xpkt.exten[0] = FUNC7(sys_authkey);
		FUNC6(&server->xmt);
		FUNC1(&server->xmt, sys_authdelay);
		FUNC0(&server->xmt, &xpkt.xmt);
		len = FUNC5(sys_authkey, (u_int32 *)&xpkt, LEN_PKT_NOMAC);
		FUNC9(&server->srcadr, &xpkt, (int)(LEN_PKT_NOMAC + len));

		if (debug > 1)
			FUNC8("transmit auth to %s\n",
			   FUNC11(&server->srcadr));
	} else {
		FUNC6(&(server->xmt));
		FUNC0(&server->xmt, &xpkt.xmt);
		FUNC9(&server->srcadr, &xpkt, LEN_PKT_NOMAC);

		if (debug > 1)
			FUNC8("transmit to %s\n", FUNC11(&server->srcadr));
	}

	/*
	 * Update the server timeout and transmit count
	 */
	server->event_time = current_time + sys_timeout;
	server->xmtcnt++;
}