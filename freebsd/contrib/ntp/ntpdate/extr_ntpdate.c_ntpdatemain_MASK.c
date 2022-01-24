#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct recvbuf {int dummy; } ;
struct pollfd {int dummy; } ;
struct TYPE_10__ {size_t ni_namelist_len; char** ni_namelist_val; } ;
typedef  TYPE_1__ ni_namelist ;
struct TYPE_11__ {int /*<<< orphan*/  l_uf; int /*<<< orphan*/  l_ui; } ;
typedef  TYPE_2__ l_fp ;
typedef  void* fd_set ;
struct TYPE_12__ {int tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int BUFSIZ ; 
 int DEFSAMPLES ; 
 scalar_t__ EINTR ; 
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEYFILE ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int LOG_NDELAY ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  LOG_NTP ; 
 int LOG_PID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  MINTIMEOUT ; 
 int /*<<< orphan*/  NTPDATE_PRIO ; 
 int NTP_SHIFT ; 
 int /*<<< orphan*/  PRIO_PROCESS ; 
 int SOCKET_ERROR ; 
 int TIMER_HZ ; 
 int /*<<< orphan*/  Version ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ WSAEINTR ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  _IOLBF ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  ai_fam_templ ; 
 scalar_t__ alarm_flag ; 
 int /*<<< orphan*/  always_step ; 
 void* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ complete_servers ; 
 scalar_t__ debug ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  fd ; 
 void* fdmask ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (struct recvbuf*) ; 
 int FUNC18 () ; 
 struct recvbuf* FUNC19 () ; 
 TYPE_1__* FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 scalar_t__ initializing ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  ipv6_works ; 
 char* key_file ; 
 char* key_file_storage ; 
 int FUNC26 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maxfd ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ nbsock ; 
 int /*<<< orphan*/  never_step ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int FUNC30 (int,char**,char*) ; 
 char* ntp_optarg ; 
 int ntp_optind ; 
 int /*<<< orphan*/  ntpdate_timerid ; 
 int /*<<< orphan*/  FUNC31 (char*,int,...) ; 
 int FUNC32 (void*,unsigned int,int) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC33 (struct recvbuf*) ; 
 int FUNC34 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int simple_query ; 
 int /*<<< orphan*/  FUNC39 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  sys_authdelay ; 
 int sys_authenticate ; 
 int sys_authkey ; 
 scalar_t__ sys_numservers ; 
 scalar_t__ sys_samples ; 
 int sys_timeout ; 
 void* sys_version ; 
 int syslogit ; 
 int /*<<< orphan*/  FUNC40 () ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ timeout ; 
 int /*<<< orphan*/  FUNC42 () ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ ) ; 
 int unpriv_port ; 
 int verbose ; 

int
FUNC44 (
	int argc,
	char *argv[]
	)
{
	int was_alarmed;
	int tot_recvbufs;
	struct recvbuf *rbuf;
	l_fp tmp;
	int errflg;
	int c;
	int nfound;

#ifdef HAVE_NETINFO
	ni_namelist *netinfoservers;
#endif
#ifdef SYS_WINNT
	key_file = key_file_storage;

	if (!ExpandEnvironmentStrings(KEYFILE, key_file, MAX_PATH))
		msyslog(LOG_ERR, "ExpandEnvironmentStrings(KEYFILE) failed: %m");

	ssl_applink();
#endif /* SYS_WINNT */

#ifdef NO_MAIN_ALLOWED
	clear_globals();
#endif

	FUNC24();	/* sets up ipv4_works, ipv6_works */

	/* Check to see if we have IPv6. Otherwise default to IPv4 */
	if (!ipv6_works)
		ai_fam_templ = AF_INET;

	errflg = 0;
	progname = argv[0];
	syslogit = 0;

	/*
	 * Decode argument list
	 */
	while ((c = FUNC30(argc, argv, "46a:bBde:k:o:p:qst:uv")) != EOF)
		switch (c)
		{
		case '4':
			ai_fam_templ = AF_INET;
			break;
		case '6':
			ai_fam_templ = AF_INET6;
			break;
		case 'a':
			c = FUNC6(ntp_optarg);
			sys_authenticate = 1;
			sys_authkey = c;
			break;
		case 'b':
			always_step++;
			never_step = 0;
			break;
		case 'B':
			never_step++;
			always_step = 0;
			break;
		case 'd':
			++debug;
			break;
		case 'e':
			if (!FUNC7(ntp_optarg, &tmp)
			|| tmp.l_ui != 0) {
				(void) FUNC15(stderr,
					   "%s: encryption delay %s is unlikely\n",
					   progname, ntp_optarg);
				errflg++;
			} else {
				sys_authdelay = tmp.l_uf;
			}
			break;
		case 'k':
			key_file = ntp_optarg;
			break;
		case 'o':
			sys_version = FUNC6(ntp_optarg);
			break;
		case 'p':
			c = FUNC6(ntp_optarg);
			if (c <= 0 || c > NTP_SHIFT) {
				(void) FUNC15(stderr,
					   "%s: number of samples (%d) is invalid\n",
					   progname, c);
				errflg++;
			} else {
				sys_samples = c;
			}
			break;
		case 'q':
			simple_query = 1;
			break;
		case 's':
			syslogit = 1;
			break;
		case 't':
			if (!FUNC7(ntp_optarg, &tmp)) {
				(void) FUNC15(stderr,
					   "%s: timeout %s is undecodeable\n",
					   progname, ntp_optarg);
				errflg++;
			} else {
				sys_timeout = ((FUNC1(&tmp) * TIMER_HZ)
					   + 0x8000) >> 16;
				sys_timeout = FUNC26(sys_timeout, MINTIMEOUT);
			}
			break;
		case 'v':
			verbose = 1;
			break;
		case 'u':
			unpriv_port = 1;
			break;
		case '?':
			++errflg;
			break;
		default:
			break;
	    }

	if (errflg) {
		(void) FUNC15(stderr,
		    "usage: %s [-46bBdqsuv] [-a key#] [-e delay] [-k file] [-p samples] [-o version#] [-t timeo] server ...\n",
		    progname);
		FUNC14(2);
	}

	/*
	 * If number of Samples (-p) not specified by user:
	 * - if a simple_query (-q) just ONE will do
	 * - otherwise the normal is DEFSAMPLES
	 */
	if (sys_samples == 0)
		 sys_samples = (simple_query ? 1 : DEFSAMPLES);

	if (debug || simple_query) {
#ifdef HAVE_SETVBUF
		static char buf[BUFSIZ];
		setvbuf(stdout, buf, _IOLBF, BUFSIZ);
#else
		FUNC35(stdout);
#endif
	}

	/*
	 * Logging.  Open the syslog if we have to
	 */
	if (syslogit) {
#if !defined (SYS_WINNT) && !defined (SYS_VXWORKS) && !defined SYS_CYGWIN32
# ifndef	LOG_DAEMON
		FUNC31("ntpdate", LOG_PID);
# else

#  ifndef	LOG_NTP
#	define	LOG_NTP LOG_DAEMON
#  endif
		openlog("ntpdate", LOG_PID | LOG_NDELAY, LOG_NTP);
		if (debug)
			setlogmask(LOG_UPTO(LOG_DEBUG));
		else
			setlogmask(LOG_UPTO(LOG_INFO));
# endif /* LOG_DAEMON */
#endif	/* SYS_WINNT */
	}

	if (debug || verbose)
		FUNC27(LOG_NOTICE, "%s", Version);

	/*
	 * Add servers we are going to be polling
	 */
#ifdef HAVE_NETINFO
	netinfoservers = getnetinfoservers();
#endif

	for ( ; ntp_optind < argc; ntp_optind++)
		FUNC5(argv[ntp_optind]);

#ifdef HAVE_NETINFO
	if (netinfoservers) {
		if ( netinfoservers->ni_namelist_len &&
		    *netinfoservers->ni_namelist_val ) {
			u_int servercount = 0;
			while (servercount < netinfoservers->ni_namelist_len) {
				if (debug) msyslog(LOG_DEBUG,
						   "Adding time server %s from NetInfo configuration.",
						   netinfoservers->ni_namelist_val[servercount]);
				addserver(netinfoservers->ni_namelist_val[servercount++]);
			}
		}
		ni_namelist_free(netinfoservers);
		free(netinfoservers);
	}
#endif

	if (sys_numservers == 0) {
		FUNC27(LOG_ERR, "no servers can be used, exiting");
		FUNC14(1);
	}

	/*
	 * Initialize the time of day routines and the I/O subsystem
	 */
	if (sys_authenticate) {
		FUNC22();
		if (!FUNC9(key_file)) {
			FUNC27(LOG_ERR, "no key file <%s>, exiting", key_file);
			FUNC14(1);
		}
		FUNC10(sys_authkey, 1);
		if (!FUNC8(sys_authkey)) {
			FUNC27(LOG_ERR, "authentication key %lu unknown",
				(unsigned long) sys_authkey);
			FUNC14(1);
		}
	}
	FUNC23();
	FUNC21();

	/*
	 * Set the priority.
	 */
#ifdef SYS_VXWORKS
	taskPrioritySet( taskIdSelf(), NTPDATE_PRIO);
#endif
#if defined(HAVE_ATT_NICE)
	nice (NTPDATE_PRIO);
#endif
#if defined(HAVE_BSD_NICE)
	(void) setpriority(PRIO_PROCESS, 0, NTPDATE_PRIO);
#endif


	initializing = 0;
	was_alarmed = 0;

	while (complete_servers < sys_numservers) {
#ifdef HAVE_POLL_H
		struct pollfd* rdfdes;
		rdfdes = fdmask;
#else
		fd_set rdfdes;
		rdfdes = fdmask;
#endif

		if (alarm_flag) {		/* alarmed? */
			was_alarmed = 1;
			alarm_flag = 0;
		}
		tot_recvbufs = FUNC18();	/* get received buffers */

		if (!was_alarmed && tot_recvbufs == 0) {
			/*
			 * Nothing to do.	 Wait for something.
			 */
#ifdef HAVE_POLL_H
			nfound = poll(rdfdes, (unsigned int)nbsock, timeout.tv_sec * 1000);

#else
			nfound = FUNC34(maxfd, &rdfdes, NULL, NULL,
					&timeout);
#endif
			if (nfound > 0)
				FUNC25();
			else if (nfound == SOCKET_ERROR)
			{
#ifndef SYS_WINNT
				if (errno != EINTR)
#else
				if (WSAGetLastError() != WSAEINTR)
#endif
					FUNC27(LOG_ERR,
#ifdef HAVE_POLL_H
						"poll() error: %m"
#else
						"select() error: %m"
#endif
						);
			} else if (errno != 0) {
#ifndef SYS_VXWORKS
				FUNC27(LOG_DEBUG,
#ifdef HAVE_POLL_H
					"poll(): nfound = %d, error: %m",
#else
					"select(): nfound = %d, error: %m",
#endif
					nfound);
#endif
			}
			if (alarm_flag) {		/* alarmed? */
				was_alarmed = 1;
				alarm_flag = 0;
			}
			tot_recvbufs = FUNC18();	/* get received buffers */
		}

		/*
		 * Out here, signals are unblocked.  Call receive
		 * procedure for each incoming packet.
		 */
		rbuf = FUNC19();
		while (rbuf != NULL)
		{
			FUNC33(rbuf);
			FUNC17(rbuf);
			rbuf = FUNC19();
		}

		/*
		 * Call timer to process any timeouts
		 */
		if (was_alarmed) {
			FUNC42();
			was_alarmed = 0;
		}

		/*
		 * Go around again
		 */
	}

	/*
	 * When we get here we've completed the polling of all servers.
	 * Adjust the clock, then exit.
	 */
#ifdef SYS_WINNT
	WSACleanup();
#endif
#ifdef SYS_VXWORKS
	close (fd);
	timer_delete(ntpdate_timerid);
#endif

	return FUNC12();
}