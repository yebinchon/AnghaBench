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

/* Variables and functions */
#define  E1CLK_INTERNAL 133 
#define  E1CLK_RECEIVE 132 
#define  E1CLK_RECEIVE_CHAN0 131 
#define  E1CLK_RECEIVE_CHAN1 130 
#define  E1CLK_RECEIVE_CHAN2 129 
#define  E1CLK_RECEIVE_CHAN3 128 
 int /*<<< orphan*/  SERIAL_GETBAUD ; 
 int /*<<< orphan*/  SERIAL_GETCABLE ; 
 int /*<<< orphan*/  SERIAL_GETCABLEN ; 
 int /*<<< orphan*/  SERIAL_GETCFG ; 
 int /*<<< orphan*/  SERIAL_GETCLK ; 
 int /*<<< orphan*/  SERIAL_GETCRC4 ; 
 int /*<<< orphan*/  SERIAL_GETDEBUG ; 
 int /*<<< orphan*/  SERIAL_GETDIR ; 
 int /*<<< orphan*/  SERIAL_GETDPLL ; 
 int /*<<< orphan*/  SERIAL_GETHIGAIN ; 
 int /*<<< orphan*/  SERIAL_GETINVCLK ; 
 int /*<<< orphan*/  SERIAL_GETINVRCLK ; 
 int /*<<< orphan*/  SERIAL_GETINVTCLK ; 
 int /*<<< orphan*/  SERIAL_GETKEEPALIVE ; 
 int /*<<< orphan*/  SERIAL_GETLCODE ; 
 int /*<<< orphan*/  SERIAL_GETLEVEL ; 
 int /*<<< orphan*/  SERIAL_GETLOOP ; 
 int /*<<< orphan*/  SERIAL_GETMONITOR ; 
 int /*<<< orphan*/  SERIAL_GETMTU ; 
 int /*<<< orphan*/  SERIAL_GETNRZI ; 
 int /*<<< orphan*/  SERIAL_GETPHONY ; 
 int /*<<< orphan*/  SERIAL_GETPORT ; 
 int /*<<< orphan*/  SERIAL_GETPROTO ; 
 int /*<<< orphan*/  SERIAL_GETRLOOP ; 
 int /*<<< orphan*/  SERIAL_GETRQLEN ; 
 int /*<<< orphan*/  SERIAL_GETSCRAMBLER ; 
 int /*<<< orphan*/  SERIAL_GETSUBCHAN ; 
 int /*<<< orphan*/  SERIAL_GETTIMESLOTS ; 
 int /*<<< orphan*/  SERIAL_GETUNFRAM ; 
 int /*<<< orphan*/  SERIAL_GETUSE16 ; 
 scalar_t__ aflag ; 
 char* chan_name ; 
 char* FUNC0 (long) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3 (int fd)
{
	char protocol [8];
	char cfg;
	int loop, dpll, nrzi, invclk, clk, higain, phony, use16, crc4;
	int level, keepalive, debug, port, invrclk, invtclk, unfram, monitor;
	int cable, dir, scrambler, ami, mtu;
	int cablen, rloop, rqlen;
	long baud, timeslots, subchan;
	int protocol_valid, baud_valid, loop_valid, use16_valid, crc4_valid;
	int dpll_valid, nrzi_valid, invclk_valid, clk_valid, phony_valid;
	int timeslots_valid, subchan_valid, higain_valid, level_valid;
	int keepalive_valid, debug_valid, cfg_valid, port_valid;
	int invrclk_valid, invtclk_valid, unfram_valid, monitor_valid;
	int cable_valid, dir_valid, scrambler_valid, ami_valid, mtu_valid;
	int cablen_valid, rloop_valid, rqlen_valid;

	protocol_valid  = FUNC1 (fd, SERIAL_GETPROTO, &protocol) >= 0;
	cfg_valid       = FUNC1 (fd, SERIAL_GETCFG, &cfg) >= 0;
	baud_valid      = FUNC1 (fd, SERIAL_GETBAUD, &baud) >= 0;
	loop_valid      = FUNC1 (fd, SERIAL_GETLOOP, &loop) >= 0;
	dpll_valid      = FUNC1 (fd, SERIAL_GETDPLL, &dpll) >= 0;
	nrzi_valid      = FUNC1 (fd, SERIAL_GETNRZI, &nrzi) >= 0;
	invclk_valid    = FUNC1 (fd, SERIAL_GETINVCLK, &invclk) >= 0;
	invrclk_valid	= FUNC1 (fd, SERIAL_GETINVRCLK, &invrclk) >= 0;
	invtclk_valid	= FUNC1 (fd, SERIAL_GETINVTCLK, &invtclk) >= 0;
	clk_valid       = FUNC1 (fd, SERIAL_GETCLK, &clk) >= 0;
	timeslots_valid = FUNC1 (fd, SERIAL_GETTIMESLOTS, &timeslots) >= 0;
	subchan_valid   = FUNC1 (fd, SERIAL_GETSUBCHAN, &subchan) >= 0;
	higain_valid    = FUNC1 (fd, SERIAL_GETHIGAIN, &higain) >= 0;
	phony_valid     = FUNC1 (fd, SERIAL_GETPHONY, &phony) >= 0;
	unfram_valid    = FUNC1 (fd, SERIAL_GETUNFRAM, &unfram) >= 0;
	monitor_valid   = FUNC1 (fd, SERIAL_GETMONITOR, &monitor) >= 0;
	use16_valid     = FUNC1 (fd, SERIAL_GETUSE16, &use16) >= 0;
	crc4_valid      = FUNC1 (fd, SERIAL_GETCRC4, &crc4) >= 0;
	ami_valid	= FUNC1 (fd, SERIAL_GETLCODE, &ami) >= 0;
	level_valid     = FUNC1 (fd, SERIAL_GETLEVEL, &level) >= 0;
	keepalive_valid = FUNC1 (fd, SERIAL_GETKEEPALIVE, &keepalive) >= 0;
	debug_valid     = FUNC1 (fd, SERIAL_GETDEBUG, &debug) >= 0;
	port_valid	= FUNC1 (fd, SERIAL_GETPORT, &port) >= 0;
	cable_valid	= FUNC1 (fd, SERIAL_GETCABLE, &cable) >= 0;
	dir_valid	= FUNC1 (fd, SERIAL_GETDIR, &dir) >= 0;
	scrambler_valid	= FUNC1 (fd, SERIAL_GETSCRAMBLER, &scrambler) >= 0;
	cablen_valid	= FUNC1 (fd, SERIAL_GETCABLEN, &cablen) >= 0;
	rloop_valid	= FUNC1 (fd, SERIAL_GETRLOOP, &rloop) >= 0;
	mtu_valid	= FUNC1 (fd, SERIAL_GETMTU, &mtu) >= 0;
	rqlen_valid	= FUNC1 (fd, SERIAL_GETRQLEN, &rqlen) >= 0;

	FUNC2 ("%s", chan_name);
	if (port_valid)
		switch (port) {
		case 0:	FUNC2 (" (rs232)"); break;
		case 1:	FUNC2 (" (v35)"); break;
		case 2:	FUNC2 (" (rs530)"); break;
		}
	else if (cable_valid)
		switch (cable) {
		case 0:	FUNC2 (" (rs232)"); break;
		case 1:	FUNC2 (" (v35)"); break;
		case 2:	FUNC2 (" (rs530)"); break;
		case 3:	FUNC2 (" (x21)"); break;
		case 4:	FUNC2 (" (rs485)"); break;
		case 9:	FUNC2 (" (no cable)"); break;
		}
	if (debug_valid && debug)
		FUNC2 (" debug=%d", debug);
	if (protocol_valid && *protocol)
		FUNC2 (" %.8s", protocol);
	else
		FUNC2 (" idle");
	if (cablen_valid)
		FUNC2 (" cablen=%s", cablen ? "on" : "off");
	if (keepalive_valid)
		FUNC2 (" keepalive=%s", keepalive ? "on" : "off");

	if (cfg_valid)
		switch (cfg) {
		case 'a' :	FUNC2 (" cfg=A");	break;
		case 'b' :	FUNC2 (" cfg=B");	break;
		case 'c' :	FUNC2 (" cfg=C");	break;
		case 'd' :	FUNC2 (" cfg=D");	break;
		default  :	FUNC2 (" cfg=unknown");
		}
	if (dir_valid)
		FUNC2 (" dir=%d", dir);

	if (baud_valid) {
		if (baud)
			FUNC2 (" %ld", baud);
		else
			FUNC2 (" extclock");
	}
	if (mtu_valid)
		FUNC2 (" mtu=%d", mtu);

	if (aflag && rqlen_valid)
		FUNC2 (" rqlen=%d", rqlen);

	if (clk_valid)
		switch (clk) {
		case E1CLK_INTERNAL:	  FUNC2 (" syn=int");     break;
		case E1CLK_RECEIVE:	  FUNC2 (" syn=rcv");     break;
		case E1CLK_RECEIVE_CHAN0: FUNC2 (" syn=rcv0");    break;
		case E1CLK_RECEIVE_CHAN1: FUNC2 (" syn=rcv1");    break;
		case E1CLK_RECEIVE_CHAN2: FUNC2 (" syn=rcv2");    break;
		case E1CLK_RECEIVE_CHAN3: FUNC2 (" syn=rcv3");    break;
		default:                  FUNC2 (" syn=%d", clk); break;
		}

	if (dpll_valid)
		FUNC2 (" dpll=%s", dpll ? "on" : "off");
	if (nrzi_valid)
		FUNC2 (" nrzi=%s", nrzi ? "on" : "off");
	if (invclk_valid)
		FUNC2 (" invclk=%s", invclk ? "on" : "off");
	if (invrclk_valid)
		FUNC2 (" invrclk=%s", invrclk ? "on" : "off");
	if (invtclk_valid)
		FUNC2 (" invtclk=%s", invtclk ? "on" : "off");
	if (unfram_valid)
		FUNC2 (" unfram=%s", unfram ? "on" : "off");
	if (use16_valid)
		FUNC2 (" use16=%s", use16 ? "on" : "off");
	if (aflag) {
		if (crc4_valid)
			FUNC2 (" crc4=%s", crc4 ? "on" : "off");
		if (higain_valid)
			FUNC2 (" higain=%s", higain ? "on" : "off");
		if (monitor_valid)
			FUNC2 (" monitor=%s", monitor ? "on" : "off");
		if (phony_valid)
			FUNC2 (" phony=%s", phony ? "on" : "off");
		if (scrambler_valid)
			FUNC2 (" scrambler=%s", scrambler ? "on" : "off");
		if (loop_valid)
			FUNC2 (" loop=%s", loop ? "on" : "off");
		if (rloop_valid)
			FUNC2 (" rloop=%s", rloop ? "on" : "off");
		if (ami_valid)
			FUNC2 (" ami=%s", ami ? "on" : "off");
	}
	if (timeslots_valid)
		FUNC2 (" ts=%s", FUNC0 (timeslots));
	if (subchan_valid)
		FUNC2 (" pass=%s", FUNC0 (subchan));
	if (level_valid)
		FUNC2 (" (level=-%.1fdB)", level / 10.0);
	FUNC2 ("\n");
}