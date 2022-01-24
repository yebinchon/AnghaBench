#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct event_config {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  tv_usec; } ;
struct TYPE_3__ {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  BROADCAST ; 
 int /*<<< orphan*/  CONCURRENT ; 
 int CTX_BCST ; 
 int CTX_CONC ; 
 int CTX_UCST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EV_FEATURE_FDS ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPV4 ; 
 int /*<<< orphan*/  IPV6 ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  KEYFILE ; 
 int /*<<< orphan*/  KOD ; 
 int /*<<< orphan*/  LOGFILE ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int OPT_VALUE_GAP ; 
 int /*<<< orphan*/  OPT_VALUE_NTPVERSION ; 
 scalar_t__ OPT_VALUE_SET_DEBUG_LEVEL ; 
 int OPT_VALUE_STEPLIMIT ; 
 int /*<<< orphan*/  OPT_VALUE_TIMEOUT ; 
 int /*<<< orphan*/  SLEW ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 char** FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STEP ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * addremove_io_fd ; 
 int /*<<< orphan*/  ai_fam_pref ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * base ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (struct event_config*) ; 
 int /*<<< orphan*/  FUNC10 (struct event_config*) ; 
 struct event_config* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct event_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 TYPE_2__ gap ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char const*,int) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 scalar_t__ ipv4_works ; 
 scalar_t__ ipv6_works ; 
 scalar_t__ FUNC22 () ; 
 int /*<<< orphan*/  keys ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC28 (int /*<<< orphan*/ *,int,char**) ; 
 int /*<<< orphan*/  ntpver ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (char*,char*) ; 
 char* progname ; 
 int /*<<< orphan*/  response_timeout ; 
 TYPE_1__ response_tv ; 
 int /*<<< orphan*/  sntpOptions ; 
 int /*<<< orphan*/  sntp_addremove_fd ; 
 int /*<<< orphan*/  FUNC32 (char*) ; 
 int /*<<< orphan*/  sntp_libevent_log_cb ; 
 int /*<<< orphan*/  start_tv ; 
 int steplimit ; 
 int /*<<< orphan*/  time_adjusted ; 
 int /*<<< orphan*/  worker_per_query ; 

int
FUNC33 (
	int argc,
	char **argv,
	const char *sntpVersion
	)
{
	int			i;
	int			exitcode;
	int			optct;
	struct event_config *	evcfg;

	/* Initialize logging system - sets up progname */
	FUNC32(argv[0]);

	if (!FUNC24())
		FUNC17(EX_SOFTWARE);

	FUNC21();
	FUNC20();

	optct = FUNC28(&sntpOptions, argc, argv);
	argc -= optct;
	argv += optct;


	debug = OPT_VALUE_SET_DEBUG_LEVEL;

	FUNC5(2, ("init_lib() done, %s%s\n",
		  (ipv4_works)
		      ? "ipv4_works "
		      : "",
		  (ipv6_works)
		      ? "ipv6_works "
		      : ""));
	ntpver = OPT_VALUE_NTPVERSION;
	steplimit = OPT_VALUE_STEPLIMIT / 1e3;
	gap.tv_usec = FUNC25(0, OPT_VALUE_GAP * 1000);
	gap.tv_usec = FUNC26(gap.tv_usec, 999999);

	if (FUNC1(LOGFILE))
		FUNC29(FUNC2(LOGFILE));

	FUNC27(LOG_INFO, "%s", sntpVersion);

	if (0 == argc && !FUNC1(BROADCAST) && !FUNC1(CONCURRENT)) {
		FUNC31("%s: Must supply at least one of -b hostname, -c hostname, or hostname.\n",
		       progname);
		FUNC17(EX_USAGE);
	}


	/*
	** Eventually, we probably want:
	** - separate bcst and ucst timeouts (why?)
	** - multiple --timeout values in the commandline
	*/

	response_timeout = OPT_VALUE_TIMEOUT;
	response_tv.tv_sec = response_timeout;
	response_tv.tv_usec = 0;

	/* IPv6 available? */
	if (FUNC22() != ISC_R_SUCCESS) {
		ai_fam_pref = AF_INET;
		FUNC5(1, ("No ipv6 support available, forcing ipv4\n"));
	} else {
		/* Check for options -4 and -6 */
		if (FUNC1(IPV4))
			ai_fam_pref = AF_INET;
		else if (FUNC1(IPV6))
			ai_fam_pref = AF_INET6;
	}

	/* TODO: Parse config file if declared */

	/*
	** Init the KOD system.
	** For embedded systems with no writable filesystem,
	** -K /dev/null can be used to disable KoD storage.
	*/
	FUNC23(FUNC2(KOD), FALSE);

	/* HMS: Check and see what happens if KEYFILE doesn't exist */
	FUNC6(FUNC2(KEYFILE), &keys);

	/*
	** Considering employing a variable that prevents functions of doing
	** anything until everything is initialized properly
	**
	** HMS: What exactly does the above mean?
	*/
	FUNC14(&sntp_libevent_log_cb);
	if (debug > 0)
		FUNC13();
#ifdef WORK_THREAD
	evthread_use_pthreads();
	/* we use libevent from main thread only, locks should be academic */
	if (debug > 0)
		evthread_enable_lock_debuging();
#endif
	evcfg = FUNC11();
	if (NULL == evcfg) {
		FUNC31("%s: event_config_new() failed!\n", progname);
		return -1;
	}
#ifndef HAVE_SOCKETPAIR
	FUNC12(evcfg, EV_FEATURE_FDS);
#endif
	/* all libevent calls are from main thread */
	/* event_config_set_flag(evcfg, EVENT_BASE_FLAG_NOLOCK); */
	base = FUNC9(evcfg);
	FUNC10(evcfg);
	if (NULL == base) {
		FUNC31("%s: event_base_new() failed!\n", progname);
		return -1;
	}

	/* wire into intres resolver */
	worker_per_query = TRUE;
	addremove_io_fd = &sntp_addremove_fd;

	FUNC30();

	if (FUNC1(BROADCAST)) {
		int		cn = FUNC3(  BROADCAST );
		const char **	cp = FUNC4( BROADCAST );

		while (cn-- > 0) {
			FUNC19(*cp, CTX_BCST);
			cp++;
		}
	}

	if (FUNC1(CONCURRENT)) {
		int		cn = FUNC3( CONCURRENT );
		const char **	cp = FUNC4( CONCURRENT );

		while (cn-- > 0) {
			FUNC19(*cp, CTX_UCST | CTX_CONC);
			cp++;
		}
	}

	for (i = 0; i < argc; ++i)
		FUNC19(argv[i], CTX_UCST);

	FUNC18(base, &start_tv);
	FUNC7(base);
	FUNC8(base);

	if (!time_adjusted &&
	    (FUNC0(STEP) || FUNC0(SLEW)))
		exitcode = 1;
	else
		exitcode = 0;

	return exitcode;
}