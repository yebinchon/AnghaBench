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
 int AUDIO_MAX_GAIN ; 
 char* CommandName ; 
 int ISSUE ; 
 char* ISSUE_DATE ; 
 int VERSION ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1 ( void )
	{
	FUNC0 ("\n\nTime Code Generation - IRIG-B or WWV, v%d.%d, %s dmw", VERSION, ISSUE, ISSUE_DATE);
	FUNC0 ("\n\nRCS Info:");
	FUNC0 (  "\n  $Header: /home/dmw/src/IRIG_generation/ntp-4.2.2p3/util/RCS/tg.c,v 1.28 2007/02/12 23:57:45 dmw Exp $");
	FUNC0 ("\n\nUsage: %s [option]*", CommandName);
	FUNC0 ("\n\nOptions: -a device_name                 Output audio device name (default /dev/audio)");
	FUNC0 (  "\n         -b yymmddhhmm                  Remove leap second at end of minute specified");
	FUNC0 (  "\n         -c seconds_to_send             Number of seconds to send (default 0 = forever)");
	FUNC0 (  "\n         -d                             Start with IEEE 1344 DST active");
	FUNC0 (  "\n         -f format_type                 i = Modulated IRIG-B 1998 (no year coded)");
	FUNC0 (  "\n                                        2 = Modulated IRIG-B 2002 (year coded)");
	FUNC0 (  "\n                                        3 = Modulated IRIG-B w/IEEE 1344 (year & control funcs) (default)");
	FUNC0 (  "\n                                        4 = Unmodulated IRIG-B w/IEEE 1344 (year & control funcs)");
	FUNC0 (  "\n                                        5 = Inverted unmodulated IRIG-B w/IEEE 1344 (year & control funcs)");
	FUNC0 (  "\n                                        w = WWV(H)");
	FUNC0 (  "\n         -g yymmddhhmm                  Switch into/out of DST at beginning of minute specified");
	FUNC0 (  "\n         -i yymmddhhmm                  Insert leap second at end of minute specified");
	FUNC0 (  "\n         -j                             Disable time rate correction against system clock (default enabled)");
	FUNC0 (  "\n         -k nn                          Force rate correction for testing (+1 = add cycle, -1 = remove cycle)");
	FUNC0 (  "\n         -l time_offset                 Set offset of time sent to UTC as per computer, +/- float hours");
	FUNC0 (  "\n         -o time_offset                 Set IEEE 1344 time offset, +/-, to 0.5 hour (default 0)");
	FUNC0 (  "\n         -q quality_code_hex            Set IEEE 1344 quality code (default 0)");
	FUNC0 (  "\n         -r sample_rate                 Audio sample rate (default 8000)");
	FUNC0 (  "\n         -s                             Set leap warning bit (WWV[H] only)");
	FUNC0 (  "\n         -t sync_frequency              WWV(H) on-time pulse tone frequency (default 1200)");
	FUNC0 (  "\n         -u DUT1_offset                 Set WWV(H) DUT1 offset -7 to +7 (default 0)");
#ifndef  HAVE_SYS_SOUNDCARD_H
	FUNC0 (  "\n         -v initial_output_level        Set initial output level (default %d, must be 0 to 255)", AUDIO_MAX_GAIN/8);
#endif
	FUNC0 (  "\n         -x                             Turn off verbose output (default on)");
	FUNC0 (  "\n         -y yymmddhhmmss                Set initial date and time as specified (default system time)");
	FUNC0 ("\n\nThis software licenced under the GPL, modifications performed 2006 & 2007 by Dean Weiten");
	FUNC0 (  "\nContact: Dean Weiten, Norscan Instruments Ltd., Winnipeg, MB, Canada, ph (204)-233-9138, E-mail dmw@norscan.com");
	FUNC0 ("\n\n");
	}