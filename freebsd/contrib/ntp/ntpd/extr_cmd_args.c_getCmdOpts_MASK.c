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
typedef  int u_short ;
typedef  int u_long ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHNOREQ ; 
 int /*<<< orphan*/  AUTHREQ ; 
 int /*<<< orphan*/  BCASTSYNC ; 
 int /*<<< orphan*/  CONFIGFILE ; 
 int DEF ; 
 int /*<<< orphan*/  DRIFTFILE ; 
 int /*<<< orphan*/  DVAR ; 
 int /*<<< orphan*/  FORCE_STEP_ONCE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPV4 ; 
 int /*<<< orphan*/  IPV6 ; 
 int /*<<< orphan*/  JAILDIR ; 
 int /*<<< orphan*/  KEYFILE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  LOOP_MAX ; 
 int NTP_MAXKEY ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 long OPT_VALUE_UPDATEINTERVAL ; 
 int /*<<< orphan*/  PANICGATE ; 
 int /*<<< orphan*/  PIDFILE ; 
 int /*<<< orphan*/  PROPAGATIONDELAY ; 
 int /*<<< orphan*/  PROTO_AUTHENTICATE ; 
 int /*<<< orphan*/  PROTO_BROADCLIENT ; 
 int /*<<< orphan*/  PROTO_BROADDELAY ; 
 int /*<<< orphan*/  QUIT ; 
 int RW ; 
 int /*<<< orphan*/  SLEW ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char** FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATSDIR ; 
 int /*<<< orphan*/  STATS_FREQ_FILE ; 
 int /*<<< orphan*/  STATS_PID_FILE ; 
 int /*<<< orphan*/  STATS_STATSDIR ; 
 void* TRUE ; 
 int /*<<< orphan*/  TRUSTEDKEY ; 
 int /*<<< orphan*/  UPDATEINTERVAL ; 
 int /*<<< orphan*/  USER ; 
 int /*<<< orphan*/  VAR ; 
 void* allow_panic ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 scalar_t__ check_netinfo ; 
 char* chrootdir ; 
 int cmdline_server_count ; 
 char** cmdline_servers ; 
 int droproot ; 
 char* FUNC6 (char*,size_t) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 void* force_step_once ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* group ; 
 long interface_interval ; 
 scalar_t__ ipv4_works ; 
 scalar_t__ ipv6_works ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 void* mode_ntpdate ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ntpdOptions ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,double,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char const*,scalar_t__,int) ; 
 int FUNC16 (char const*,char*,double*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC18 (char const*) ; 
 char* FUNC19 (char*,char) ; 
 char* user ; 

void
FUNC20(
	int	argc,
	char **	argv
	)
{
	extern const char *config_file;
	int errflg;

	/*
	 * Initialize, initialize
	 */
	errflg = 0;

	if (ipv4_works && ipv6_works) {
		if (FUNC0( IPV4 ))
			ipv6_works = 0;
		else if (FUNC0( IPV6 ))
			ipv4_works = 0;
	} else if (!ipv4_works && !ipv6_works) {
		FUNC12(LOG_ERR, "Neither IPv4 nor IPv6 networking detected, fatal.");
		FUNC8(1);
	} else if (FUNC0( IPV4 ) && !ipv4_works)
		FUNC12(LOG_WARNING, "-4/--ipv4 ignored, IPv4 networking not found.");
	else if (FUNC0( IPV6 ) && !ipv6_works)
		FUNC12(LOG_WARNING, "-6/--ipv6 ignored, IPv6 networking not found.");

	if (FUNC0( AUTHREQ ))
		FUNC14(PROTO_AUTHENTICATE, 1, 0., NULL);
	else if (FUNC0( AUTHNOREQ ))
		FUNC14(PROTO_AUTHENTICATE, 0, 0., NULL);

	if (FUNC0( BCASTSYNC ))
		FUNC14(PROTO_BROADCLIENT, 1, 0., NULL);

	if (FUNC0( CONFIGFILE )) {
		config_file = FUNC1( CONFIGFILE );
#ifdef HAVE_NETINFO
		check_netinfo = 0;
#endif
	}

	if (FUNC0( DRIFTFILE ))
		FUNC17(STATS_FREQ_FILE, FUNC1( DRIFTFILE ));

	if (FUNC0( PANICGATE ))
		allow_panic = TRUE;

	if (FUNC0( FORCE_STEP_ONCE ))
		force_step_once = TRUE;

#ifdef HAVE_DROPROOT
	if (HAVE_OPT( JAILDIR )) {
		droproot = 1;
		chrootdir = OPT_ARG( JAILDIR );
	}
#endif

	if (FUNC0( KEYFILE ))
		FUNC10(FUNC1( KEYFILE ));

	if (FUNC0( PIDFILE ))
		FUNC17(STATS_PID_FILE, FUNC1( PIDFILE ));

	if (FUNC0( QUIT ))
		mode_ntpdate = TRUE;

	if (FUNC0( PROPAGATIONDELAY ))
		do {
			double tmp;
			const char *my_ntp_optarg = FUNC1( PROPAGATIONDELAY );

			if (FUNC16(my_ntp_optarg, "%lf", &tmp) != 1) {
				FUNC12(LOG_ERR,
					"command line broadcast delay value %s undecodable",
					my_ntp_optarg);
			} else {
				FUNC14(PROTO_BROADDELAY, 0, tmp, NULL);
			}
		} while (0);

	if (FUNC0( STATSDIR ))
		FUNC17(STATS_STATSDIR, FUNC1( STATSDIR ));

	if (FUNC0( TRUSTEDKEY )) {
		int		ct = FUNC2(  TRUSTEDKEY );
		const char**	pp = FUNC3( TRUSTEDKEY );

		do  {
			u_long tkey;
			const char* p = *pp++;

			tkey = (int)FUNC4(p);
			if (tkey == 0 || tkey > NTP_MAXKEY) {
				FUNC12(LOG_ERR,
				    "command line trusted key %s is invalid",
				    p);
			} else {
				FUNC5(tkey, 1);
			}
		} while (--ct > 0);
	}

#ifdef HAVE_DROPROOT
	if (HAVE_OPT( USER )) {
		droproot = 1;
		user = estrdup(OPT_ARG( USER ));
		group = strrchr(user, ':');
		if (group != NULL) {
			size_t	len;

			*group++ = '\0'; /* get rid of the ':' */
			len = group - user;
			group = estrdup(group);
			user = erealloc(user, len);
		}
	}
#endif

	if (FUNC0( VAR )) {
		int		ct;
		const char **	pp;
		const char *	v_assign;

		ct = FUNC2(  VAR );
		pp = FUNC3( VAR );

		do  {
			v_assign = *pp++;
			FUNC15(v_assign, FUNC18(v_assign) + 1, RW);
		} while (--ct > 0);
	}

	if (FUNC0( DVAR )) {
		int		ct = FUNC2(  DVAR );
		const char**	pp = FUNC3( DVAR );

		do  {
			const char* my_ntp_optarg = *pp++;

			FUNC15(my_ntp_optarg, FUNC18(my_ntp_optarg)+1,
			    (u_short) (RW | DEF));
		} while (--ct > 0);
	}

	if (FUNC0( SLEW ))
		FUNC11(LOOP_MAX, 600);

	if (FUNC0( UPDATEINTERVAL )) {
		long val = OPT_VALUE_UPDATEINTERVAL;

		if (val >= 0)
			interface_interval = val;
		else {
			FUNC9(stderr,
				"command line interface update interval %ld must not be negative\n",
				val);
			FUNC12(LOG_ERR,
				"command line interface update interval %ld must not be negative",
				val);
			errflg++;
		}
	}


	/* save list of servers from cmd line for config_peers() use */
	if (argc > 0) {
		cmdline_server_count = argc;
		cmdline_servers = argv;
	}

	/* display usage & exit with any option processing errors */
	if (errflg)
		FUNC13(&ntpdOptions, 2);	/* does not return */
}