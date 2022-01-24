#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  l_uf; scalar_t__ l_ui; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* AF_INET ; 
 void* AF_INET6 ; 
 int /*<<< orphan*/  COMMAND ; 
 int /*<<< orphan*/  DEFDELAY ; 
 char* DEFHOST ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INITDATASIZE ; 
 int /*<<< orphan*/  INTERACTIVE ; 
 int /*<<< orphan*/  IPV4 ; 
 int /*<<< orphan*/  IPV6 ; 
 int /*<<< orphan*/  LISTPEERS ; 
 int /*<<< orphan*/  NUMERIC ; 
 int /*<<< orphan*/  OPT_VALUE_SET_DEBUG_LEVEL ; 
 int /*<<< orphan*/  PEERS ; 
 int /*<<< orphan*/  SHOWPEERS ; 
 int /*<<< orphan*/  SIGINT ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 char** FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  abortcmd ; 
 void* ai_fam_default ; 
 void* ai_fam_templ ; 
 int /*<<< orphan*/ * ccmds ; 
 char** chosts ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  debug ; 
 TYPE_1__ delay_time ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int interactive ; 
 int /*<<< orphan*/  ipv6_works ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int,char**) ; 
 int ntp_optind ; 
 int /*<<< orphan*/  ntpdcOptions ; 
 int numcmds ; 
 int numhosts ; 
 scalar_t__ FUNC15 (char*) ; 
 int /*<<< orphan*/  pktdata ; 
 int /*<<< orphan*/  pktdatasize ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 char* progname ; 
 scalar_t__ showhostnames ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 

int
FUNC21(
	int argc,
	char *argv[]
	)
{
	delay_time.l_ui = 0;
	delay_time.l_uf = DEFDELAY;

#ifdef SYS_VXWORKS
	clear_globals();
	taskPrioritySet(taskIdSelf(), 100 );
#endif

	FUNC12();	/* sets up ipv4_works, ipv6_works */
	FUNC18();
	FUNC11();

	/* Check to see if we have IPv6. Otherwise default to IPv4 */
	if (!ipv6_works)
		ai_fam_default = AF_INET;

	progname = argv[0];

	{
		int optct = FUNC14(&ntpdcOptions, argc, argv);
		argc -= optct;
		argv += optct;
	}

	if (FUNC2(IPV4))
		ai_fam_templ = AF_INET;
	else if (FUNC2(IPV6))
		ai_fam_templ = AF_INET6;
	else
		ai_fam_templ = ai_fam_default;

	if (FUNC2(COMMAND)) {
		int		cmdct = FUNC3( COMMAND );
		const char**	cmds  = FUNC4( COMMAND );

		while (cmdct-- > 0) {
			FUNC0(*cmds++);
		}
	}

	debug = OPT_VALUE_SET_DEBUG_LEVEL;

	if (FUNC2(INTERACTIVE)) {
		interactive = 1;
	}

	if (FUNC2(NUMERIC)) {
		showhostnames = 0;
	}

	if (FUNC2(LISTPEERS)) {
		FUNC0("listpeers");
	}

	if (FUNC2(PEERS)) {
		FUNC0("peers");
	}

	if (FUNC2(SHOWPEERS)) {
		FUNC0("dmpeers");
	}

	if (ntp_optind == argc) {
		FUNC1(DEFHOST);
	} else {
		for (; ntp_optind < argc; ntp_optind++)
		    FUNC1(argv[ntp_optind]);
	}

	if (numcmds == 0 && interactive == 0
	    && FUNC13(FUNC9(stdin)) && FUNC13(FUNC9(stderr))) {
		interactive = 1;
	}

#ifndef SYS_WINNT /* Under NT cannot handle SIGINT, WIN32 spawns a handler */
	if (interactive)
		(void) FUNC17(SIGINT, abortcmd);
#endif /* SYS_WINNT */

	/*
	 * Initialize the packet data buffer
	 */
	pktdatasize = INITDATASIZE;
	pktdata = FUNC8(INITDATASIZE);

	if (numcmds == 0) {
		(void) FUNC15(chosts[0]);
		FUNC10();
	} else {
		int ihost;
		int icmd;

		for (ihost = 0; ihost < numhosts; ihost++) {
			if (FUNC15(chosts[ihost]))
			    for (icmd = 0; icmd < numcmds; icmd++) {
				    if (numhosts > 1) 
					FUNC16 ("--- %s ---\n",chosts[ihost]);
				    FUNC7(ccmds[icmd]);
			    }
		}
	}
#ifdef SYS_WINNT
	WSACleanup();
#endif
	return(0);
}