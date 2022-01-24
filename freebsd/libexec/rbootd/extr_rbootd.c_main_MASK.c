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
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  RMPCONN ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 scalar_t__ BootAny ; 
 char* BootDir ; 
 char* FUNC0 (char**) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* ConfigFile ; 
 int /*<<< orphan*/  DIR_RCVD ; 
 int /*<<< orphan*/ * DbgFp ; 
 scalar_t__ DebugFlg ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* DfltConfig ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ EINTR ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 () ; 
 char* IntfName ; 
 int /*<<< orphan*/  LOG_DAEMON ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  LOG_PID ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int MAXHOSTNAMELEN ; 
 char* MyHost ; 
 scalar_t__ MyPid ; 
 scalar_t__ FUNC13 () ; 
 char* PidFile ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RMP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * RmpConns ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC25 () ; 
 scalar_t__ FUNC26 (char*,int) ; 
 int FUNC27 (int,char**,char*) ; 
 scalar_t__ FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 int optind ; 
 int FUNC30 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC34 (int) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC36 () ; 
 int /*<<< orphan*/  FUNC37 (char*,char*) ; 

int
FUNC38(int argc, char *argv[])
{
	int c, fd, omask, maxfds;
	fd_set rset;

	/*
	 *  Close any open file descriptors.
	 *  Temporarily leave stdin & stdout open for `-d',
	 *  and stderr open for any pre-syslog error messages.
	 */
	{
		int i, nfds = FUNC25();

		for (i = 0; i < nfds; i++)
			if (i != FUNC22(stdin) && i != FUNC22(stdout) &&
			    i != FUNC22(stderr))
				(void) FUNC18(i);
	}

	/*
	 *  Parse any arguments.
	 */
	while ((c = FUNC27(argc, argv, "adi:")) != -1)
		switch(c) {
		    case 'a':
			BootAny++;
			break;
		    case 'd':
			DebugFlg++;
			break;
		    case 'i':
			IntfName = optarg;
			break;
		    default:
			FUNC36();
		}
	for (; optind < argc; optind++) {
		if (ConfigFile == NULL)
			ConfigFile = argv[optind];
		else {
			FUNC37("too many config files (`%s' ignored)",
			    argv[optind]);
		}
	}

	if (ConfigFile == NULL)			/* use default config file */
		ConfigFile = DfltConfig;

	if (DebugFlg) {
		DbgFp = stdout;				/* output to stdout */

		(void) FUNC33(SIGUSR1, SIG_IGN);	/* dont muck w/DbgFp */
		(void) FUNC33(SIGUSR2, SIG_IGN);
		(void) FUNC21(stderr);			/* finished with it */
	} else {
		if (FUNC19(0, 0))
			FUNC20(1, "can't detach from terminal");

		(void) FUNC33(SIGUSR1, DebugOn);
		(void) FUNC33(SIGUSR2, DebugOff);
	}

	FUNC29("rbootd", LOG_PID, LOG_DAEMON);

	/*
	 *  If no interface was specified, get one now.
	 *
	 *  This is convoluted because we want to get the default interface
	 *  name for the syslog("restarted") message.  If BpfGetIntfName()
	 *  runs into an error, it will return a syslog-able error message
	 *  (in `errmsg') which will be displayed here.
	 */
	if (IntfName == NULL) {
		char *errmsg;

		if ((IntfName = FUNC0(&errmsg)) == NULL) {
			/* Backslash to avoid trigraph '??)'. */
			FUNC35(LOG_NOTICE, "restarted (?\?)");
			/* BpfGetIntfName() returns safe names, using %m */
			FUNC35(LOG_ERR, "%s", errmsg);
			FUNC8(0);
		}
	}

	FUNC35(LOG_NOTICE, "restarted (%s)", IntfName);

	(void) FUNC33(SIGHUP, ReConfig);
	(void) FUNC33(SIGINT, Exit);
	(void) FUNC33(SIGTERM, Exit);

	/*
	 *  Grab our host name and pid.
	 */
	if (FUNC26(MyHost, MAXHOSTNAMELEN - 1) < 0) {
		FUNC35(LOG_ERR, "gethostname: %m");
		FUNC8(0);
	}
	MyHost[MAXHOSTNAMELEN - 1] = '\0';

	MyPid = FUNC28();

	/*
	 *  Write proc's pid to a file.
	 */
	{
		FILE *fp;

		if ((fp = FUNC23(PidFile, "w")) != NULL) {
			(void) FUNC24(fp, "%d\n", (int) MyPid);
			(void) FUNC21(fp);
		} else {
			FUNC35(LOG_WARNING, "fopen: failed (%s)", PidFile);
		}
	}

	/*
	 *  All boot files are relative to the boot directory, we might
	 *  as well chdir() there to make life easier.
	 */
	if (FUNC17(BootDir) < 0) {
		FUNC35(LOG_ERR, "chdir: %m (%s)", BootDir);
		FUNC8(0);
	}

	/*
	 *  Initial configuration.
	 */
	omask = FUNC31(FUNC32(SIGHUP));	/* prevent reconfig's */
	if (FUNC12() == 0)		/* get list of boot files */
		FUNC8(0);
	if (FUNC13() == 0)			/* parse config file */
		FUNC8(0);

	/*
	 *  Open and initialize a BPF device for the appropriate interface.
	 *  If an error is encountered, a message is displayed and Exit()
	 *  is called.
	 */
	fd = FUNC1();

	(void) FUNC34(omask);		/* allow reconfig's */

	/*
	 *  Main loop: receive a packet, determine where it came from,
	 *  and if we service this host, call routine to handle request.
	 */
	maxfds = fd + 1;
	FUNC11(&rset);
	FUNC10(fd, &rset);
	for (;;) {
		struct timeval timeout;
		fd_set r;
		int nsel;

		r = rset;

		if (RmpConns == NULL) {		/* timeout isn't necessary */
			nsel = FUNC30(maxfds, &r, NULL, NULL, NULL);
		} else {
			timeout.tv_sec = RMP_TIMEOUT;
			timeout.tv_usec = 0;
			nsel = FUNC30(maxfds, &r, NULL, NULL, &timeout);
		}

		if (nsel < 0) {
			if (errno == EINTR)
				continue;
			FUNC35(LOG_ERR, "select: %m");
			FUNC8(0);
		} else if (nsel == 0) {		/* timeout */
			FUNC6();			/* clear stale conns */
			continue;
		}

		if (FUNC9(fd, &r)) {
			RMPCONN rconn;
			CLIENT *client, *FUNC39();
			int doread = 1;

			while (FUNC2(&rconn, doread)) {
				doread = 0;

				if (DbgFp != NULL)	/* display packet */
					FUNC5(&rconn,DIR_RCVD);

				omask = FUNC31(FUNC32(SIGHUP));

				/*
				 *  If we do not restrict service, set the
				 *  client to NULL (ProcessPacket() handles
				 *  this).  Otherwise, check that we can
				 *  service this host; if not, log a message
				 *  and ignore the packet.
				 */
				if (BootAny) {
					client = NULL;
				} else if ((client=FUNC39(&rconn))==NULL) {
					FUNC35(LOG_INFO,
					       "%s: boot packet ignored",
					       FUNC7(&rconn));
					(void) FUNC34(omask);
					continue;
				}

				FUNC14(&rconn,client);

				(void) FUNC34(omask);
			}
		}
	}
}