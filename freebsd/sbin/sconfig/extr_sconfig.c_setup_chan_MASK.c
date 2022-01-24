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
 int E1CLK_INTERNAL ; 
 int E1CLK_RECEIVE ; 
 int E1CLK_RECEIVE_CHAN0 ; 
 int E1CLK_RECEIVE_CHAN1 ; 
 int E1CLK_RECEIVE_CHAN2 ; 
 int E1CLK_RECEIVE_CHAN3 ; 
 int /*<<< orphan*/  SERIAL_ADDDLCI ; 
 int SERIAL_ASYNC ; 
 int /*<<< orphan*/  SERIAL_GETMODE ; 
 int /*<<< orphan*/  SERIAL_HARDRESET ; 
 int SERIAL_HDLC ; 
 int /*<<< orphan*/  SERIAL_RESET ; 
 int /*<<< orphan*/  SERIAL_SETBAUD ; 
 int /*<<< orphan*/  SERIAL_SETCABLEN ; 
 int /*<<< orphan*/  SERIAL_SETCFG ; 
 int /*<<< orphan*/  SERIAL_SETCLK ; 
 int /*<<< orphan*/  SERIAL_SETCRC4 ; 
 int /*<<< orphan*/  SERIAL_SETDEBUG ; 
 int /*<<< orphan*/  SERIAL_SETDIR ; 
 int /*<<< orphan*/  SERIAL_SETDPLL ; 
 int /*<<< orphan*/  SERIAL_SETHIGAIN ; 
 int /*<<< orphan*/  SERIAL_SETINVCLK ; 
 int /*<<< orphan*/  SERIAL_SETINVRCLK ; 
 int /*<<< orphan*/  SERIAL_SETINVTCLK ; 
 int /*<<< orphan*/  SERIAL_SETKEEPALIVE ; 
 int /*<<< orphan*/  SERIAL_SETLCODE ; 
 int /*<<< orphan*/  SERIAL_SETLOOP ; 
 int /*<<< orphan*/  SERIAL_SETMODE ; 
 int /*<<< orphan*/  SERIAL_SETMONITOR ; 
 int /*<<< orphan*/  SERIAL_SETMTU ; 
 int /*<<< orphan*/  SERIAL_SETNRZI ; 
 int /*<<< orphan*/  SERIAL_SETPHONY ; 
 int /*<<< orphan*/  SERIAL_SETPORT ; 
 int /*<<< orphan*/  SERIAL_SETPROTO ; 
 int /*<<< orphan*/  SERIAL_SETRLOOP ; 
 int /*<<< orphan*/  SERIAL_SETRQLEN ; 
 int /*<<< orphan*/  SERIAL_SETSCRAMBLER ; 
 int /*<<< orphan*/  SERIAL_SETSUBCHAN ; 
 int /*<<< orphan*/  SERIAL_SETTIMESLOTS ; 
 int /*<<< orphan*/  SERIAL_SETUNFRAM ; 
 int /*<<< orphan*/  SERIAL_SETUSE16 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 () ; 
 long FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 void* FUNC8 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9 (int fd, int argc, char **argv)
{
	int i, mode, loop, nrzi, dpll, invclk, phony, use16, crc4, unfram, ami;
	int higain, clk, keepalive, debug, port, dlci, invrclk, invtclk;
	int monitor, dir, scrambler, rloop, cablen;
	int mode_valid;
	long baud, timeslots, mtu, rqlen;

	for (i=0; i<argc; ++i) {
		if (argv[i][0] >= '0' && argv[i][0] <= '9') {
			baud = FUNC8 (argv[i], 0, 10);
			FUNC2 (fd, SERIAL_SETBAUD, &baud);
		} else if (FUNC6 ("extclock", argv[i]) == 0) {
			baud = 0;
			FUNC2 (fd, SERIAL_SETBAUD, &baud);
		} else if (FUNC7 ("cfg=", argv[i], 4) == 0) {
			if (FUNC7 ("a", argv[i]+4, 1) == 0)
				FUNC2 (fd, SERIAL_SETCFG, "a");
			else if (FUNC7 ("b", argv[i]+4, 1) == 0)
				FUNC2 (fd, SERIAL_SETCFG, "b");
			else if (FUNC7 ("c", argv[i]+4, 1) == 0)
				FUNC2 (fd, SERIAL_SETCFG, "c");
			else if (FUNC7 ("d", argv[i]+4, 1) == 0)
				FUNC2 (fd, SERIAL_SETCFG, "d");
			else {
				FUNC1 (stderr, "invalid cfg\n");
				FUNC0 (-1);
			}
		} else if (FUNC6 ("idle", argv[i]) == 0)
			FUNC2 (fd, SERIAL_SETPROTO, "\0\0\0\0\0\0\0");
		else if (FUNC6 ("async", argv[i]) == 0) {
			mode = SERIAL_ASYNC;
			if (FUNC2 (fd, SERIAL_SETMODE, &mode) >= 0)
				FUNC2 (fd, SERIAL_SETPROTO, "async\0\0");
		} else if (FUNC6 ("sync", argv[i]) == 0) {
			mode = SERIAL_HDLC;
			if (FUNC2 (fd, SERIAL_SETMODE, &mode) >= 0)
				FUNC2 (fd, SERIAL_SETPROTO, "sync\0\0\0");
		} else if (FUNC6 ("cisco", argv[i]) == 0) {
			mode = SERIAL_HDLC;
			FUNC2 (fd, SERIAL_SETMODE, &mode);
			FUNC2 (fd, SERIAL_SETPROTO, "cisco\0\0");
		} else if (FUNC6 ("rbrg", argv[i]) == 0) {
			mode = SERIAL_HDLC;
			FUNC2 (fd, SERIAL_SETMODE, &mode);
			FUNC2 (fd, SERIAL_SETPROTO, "rbrg\0\0\0");
		} else if (FUNC6 ("raw", argv[i]) == 0) {
			mode = SERIAL_HDLC;
			FUNC2 (fd, SERIAL_SETMODE, &mode);
			FUNC2 (fd, SERIAL_SETPROTO, "raw\0\0\0\0");
		} else if (FUNC6 ("packet", argv[i]) == 0) {
			mode = SERIAL_HDLC;
			FUNC2 (fd, SERIAL_SETMODE, &mode);
			FUNC2 (fd, SERIAL_SETPROTO, "packet\0");
		} else if (FUNC6 ("ppp", argv[i]) == 0) {
			/* check that ppp line discipline is present */
			if (FUNC3 ()) {
				mode = SERIAL_HDLC;
				FUNC2 (fd, SERIAL_SETMODE, &mode);
				FUNC2 (fd, SERIAL_SETPROTO, "ppp\0\0\0\0");
			}
		} else if (FUNC7 ("keepalive=", argv[i], 10) == 0) {
			keepalive = (FUNC6 ("on", argv[i] + 10) == 0);
			FUNC2 (fd, SERIAL_SETKEEPALIVE, &keepalive);
		} else if (FUNC6 ("fr", argv[i]) == 0) {
			mode = SERIAL_HDLC;
			FUNC2 (fd, SERIAL_SETMODE, &mode);
			FUNC2 (fd, SERIAL_SETPROTO, "fr\0\0\0\0\0");
		} else if (FUNC6 ("zaptel", argv[i]) == 0) {
			mode = SERIAL_HDLC;
			FUNC2 (fd, SERIAL_SETMODE, &mode);
			FUNC2 (fd, SERIAL_SETPROTO, "zaptel\0");
		} else if (FUNC7 ("debug=", argv[i], 6) == 0) {
			debug = FUNC8 (argv[i]+6, 0, 10);
			mode_valid = FUNC2 (fd, SERIAL_GETMODE, &mode) >= 0;
			if (!mode_valid || mode != SERIAL_ASYNC) {
				if (debug == 0) {
					FUNC5(0);
				} else {
					FUNC2 (fd, SERIAL_SETDEBUG, &debug);
					FUNC5(1);
				}
			} else {
				FUNC2 (fd, SERIAL_SETDEBUG, &debug);
			}
		} else if (FUNC7 ("loop=", argv[i], 5) == 0) {
			loop = (FUNC6 ("on", argv[i] + 5) == 0);
			FUNC2 (fd, SERIAL_SETLOOP, &loop);
		} else if (FUNC7 ("rloop=", argv[i], 6) == 0) {
			rloop = (FUNC6 ("on", argv[i] + 6) == 0);
			FUNC2 (fd, SERIAL_SETRLOOP, &rloop);
		} else if (FUNC7 ("dpll=", argv[i], 5) == 0) {
			dpll = (FUNC6 ("on", argv[i] + 5) == 0);
			FUNC2 (fd, SERIAL_SETDPLL, &dpll);
		} else if (FUNC7 ("nrzi=", argv[i], 5) == 0) {
			nrzi = (FUNC6 ("on", argv[i] + 5) == 0);
			FUNC2 (fd, SERIAL_SETNRZI, &nrzi);
		} else if (FUNC7 ("invclk=", argv[i], 7) == 0) {
			invclk = (FUNC6 ("on", argv[i] + 7) == 0);
			FUNC2 (fd, SERIAL_SETINVCLK, &invclk);
		} else if (FUNC7 ("invrclk=", argv[i], 8) == 0) {
			invrclk = (FUNC6 ("on", argv[i] + 8) == 0);
			FUNC2 (fd, SERIAL_SETINVRCLK, &invrclk);
		} else if (FUNC7 ("invtclk=", argv[i], 8) == 0) {
			invtclk = (FUNC6 ("on", argv[i] + 8) == 0);
			FUNC2 (fd, SERIAL_SETINVTCLK, &invtclk);
		} else if (FUNC7 ("higain=", argv[i], 7) == 0) {
			higain = (FUNC6 ("on", argv[i] + 7) == 0);
			FUNC2 (fd, SERIAL_SETHIGAIN, &higain);
		} else if (FUNC7 ("phony=", argv[i], 6) == 0) {
			phony = (FUNC6 ("on", argv[i] + 6) == 0);
			FUNC2 (fd, SERIAL_SETPHONY, &phony);
		} else if (FUNC7 ("unfram=", argv[i], 7) == 0) {
			unfram = (FUNC6 ("on", argv[i] + 7) == 0);
			FUNC2 (fd, SERIAL_SETUNFRAM, &unfram);
		} else if (FUNC7 ("scrambler=", argv[i], 10) == 0) {
			scrambler = (FUNC6 ("on", argv[i] + 10) == 0);
			FUNC2 (fd, SERIAL_SETSCRAMBLER, &scrambler);
		} else if (FUNC7 ("monitor=", argv[i], 8) == 0) {
			monitor = (FUNC6 ("on", argv[i] + 8) == 0);
			FUNC2 (fd, SERIAL_SETMONITOR, &monitor);
		} else if (FUNC7 ("use16=", argv[i], 6) == 0) {
			use16 = (FUNC6 ("on", argv[i] + 6) == 0);
			FUNC2 (fd, SERIAL_SETUSE16, &use16);
		} else if (FUNC7 ("crc4=", argv[i], 5) == 0) {
			crc4 = (FUNC6 ("on", argv[i] + 5) == 0);
			FUNC2 (fd, SERIAL_SETCRC4, &crc4);
		} else if (FUNC7 ("ami=", argv[i], 4) == 0) {
			ami = (FUNC6 ("on", argv[i] + 4) == 0);
			FUNC2 (fd, SERIAL_SETLCODE, &ami);
		} else if (FUNC7 ("mtu=", argv[i], 4) == 0) {
			mtu = FUNC8 (argv[i] + 4, 0, 10);
			FUNC2 (fd, SERIAL_SETMTU, &mtu);
		} else if (FUNC7 ("rqlen=", argv[i], 6) == 0) {
			rqlen = FUNC8 (argv[i] + 6, 0, 10);
			FUNC2 (fd, SERIAL_SETRQLEN, &rqlen);
		} else if (FUNC6 ("syn=int", argv[i]) == 0) {
			clk = E1CLK_INTERNAL;
			FUNC2 (fd, SERIAL_SETCLK, &clk);
		} else if (FUNC6 ("syn=rcv", argv[i]) == 0) {
			clk = E1CLK_RECEIVE;
			FUNC2 (fd, SERIAL_SETCLK, &clk);
		} else if (FUNC6 ("syn=rcv0", argv[i]) == 0) {
			clk = E1CLK_RECEIVE_CHAN0;
			FUNC2 (fd, SERIAL_SETCLK, &clk);
		} else if (FUNC6 ("syn=rcv1", argv[i]) == 0) {
			clk = E1CLK_RECEIVE_CHAN1;
			FUNC2 (fd, SERIAL_SETCLK, &clk);
		} else if (FUNC6 ("syn=rcv2", argv[i]) == 0) {
			clk = E1CLK_RECEIVE_CHAN2;
			FUNC2 (fd, SERIAL_SETCLK, &clk);
		} else if (FUNC6 ("syn=rcv3", argv[i]) == 0) {
			clk = E1CLK_RECEIVE_CHAN3;
			FUNC2 (fd, SERIAL_SETCLK, &clk);
		} else if (FUNC7 ("ts=", argv[i], 3) == 0) {
			timeslots = FUNC4 (argv[i] + 3);
			FUNC2 (fd, SERIAL_SETTIMESLOTS, &timeslots);
		} else if (FUNC7 ("pass=", argv[i], 5) == 0) {
			timeslots = FUNC4 (argv[i] + 5);
			FUNC2 (fd, SERIAL_SETSUBCHAN, &timeslots);
		} else if (FUNC7 ("dlci", argv[i], 4) == 0) {
			dlci = FUNC8 (argv[i]+4, 0, 10);
			FUNC2 (fd, SERIAL_ADDDLCI, &dlci);
		} else if (FUNC7 ("dir=", argv[i], 4) == 0) {
			dir = FUNC8 (argv[i]+4, 0, 10);
			FUNC2 (fd, SERIAL_SETDIR, &dir);
		} else if (FUNC7 ("port=", argv[i], 5) == 0) {
			if (FUNC7 ("rs232", argv[i]+5, 5) == 0) {
				port = 0;
				FUNC2 (fd, SERIAL_SETPORT, &port);
			} else if (FUNC7 ("v35", argv[i]+5, 3) == 0) {
				port = 1;
				FUNC2 (fd, SERIAL_SETPORT, &port);
			} else if (FUNC7 ("rs449", argv[i]+5, 5) == 0) {
				port = 2;
				FUNC2 (fd, SERIAL_SETPORT, &port);
			} else
				FUNC1 (stderr, "invalid port type\n");
				FUNC0 (-1);
#if 1
		} else if (FUNC6 ("reset", argv[i]) == 0) {
			FUNC2 (fd, SERIAL_RESET, 0);
		} else if (FUNC6 ("hwreset", argv[i]) == 0) {
			FUNC2 (fd, SERIAL_HARDRESET, 0);
#endif
		} else if (FUNC7 ("cablen=", argv[i], 7) == 0) {
			loop = (FUNC6 ("on", argv[i] + 7) == 0);
			FUNC2 (fd, SERIAL_SETCABLEN, &cablen);
		}
	}
}