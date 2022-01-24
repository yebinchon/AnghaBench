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
typedef  scalar_t__ u_int ;
struct utmpx {int /*<<< orphan*/  ut_tv; int /*<<< orphan*/  ut_type; } ;
struct passwd {char* pw_name; } ;

/* Variables and functions */
 int EPERM ; 
 int ESRCH ; 
 int LOG_AUTH ; 
 int LOG_CONS ; 
 int /*<<< orphan*/  LOG_CRIT ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int RB_DUMP ; 
 int RB_HALT ; 
 int RB_NOSYNC ; 
 int RB_POWERCYCLE ; 
 int RB_POWEROFF ; 
 int RB_REROOT ; 
 int /*<<< orphan*/  SHUTDOWN_TIME ; 
 int /*<<< orphan*/  SIGEMT ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int dohalt ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 char* FUNC6 () ; 
 int FUNC7 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct passwd* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC15 (struct utmpx*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int FUNC20 (char const*) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int,char const*,int) ; 

int
FUNC26(int argc, char *argv[])
{
	struct utmpx utx;
	const struct passwd *pw;
	int ch, howto, i, fd, lflag, nflag, qflag, sverrno, Nflag;
	u_int pageins;
	const char *user, *kernel = NULL;

	if (FUNC21(FUNC8(), "halt") != NULL) {
		dohalt = 1;
		howto = RB_HALT;
	} else
		howto = 0;
	lflag = nflag = qflag = Nflag = 0;
	while ((ch = FUNC7(argc, argv, "cdk:lNnpqr")) != -1)
		switch(ch) {
		case 'c':
			howto |= RB_POWERCYCLE;
			break;
		case 'd':
			howto |= RB_DUMP;
			break;
		case 'k':
			kernel = optarg;
			break;
		case 'l':
			lflag = 1;
			break;
		case 'n':
			nflag = 1;
			howto |= RB_NOSYNC;
			break;
		case 'N':
			nflag = 1;
			Nflag = 1;
			break;
		case 'p':
			howto |= RB_POWEROFF;
			break;
		case 'q':
			qflag = 1;
			break;
		case 'r':
			howto |= RB_REROOT;
			break;
		case '?':
		default:
			FUNC24();
		}
	argc -= optind;
	argv += optind;
	if (argc != 0)
		FUNC24();

	if ((howto & (RB_DUMP | RB_HALT)) == (RB_DUMP | RB_HALT))
		FUNC2(1, "cannot dump (-d) when halting; must reboot instead");
	if (Nflag && (howto & RB_NOSYNC) != 0)
		FUNC2(1, "-N cannot be used with -n");
	if ((howto & RB_POWEROFF) && (howto & RB_POWERCYCLE))
		FUNC2(1, "-c and -p cannot be used together");
	if ((howto & RB_REROOT) != 0 && howto != RB_REROOT)
		FUNC2(1, "-r cannot be used with -c, -d, -n, or -p");
	if (FUNC5()) {
		errno = EPERM;
		FUNC1(1, NULL);
	}

	if (qflag) {
		FUNC16(howto);
		FUNC1(1, NULL);
	}

	if (kernel != NULL) {
		fd = FUNC13("/boot/nextboot.conf", O_WRONLY | O_CREAT | O_TRUNC,
		    0444);
		if (fd > -1) {
			(void)FUNC25(fd, "nextboot_enable=\"YES\"\n", 22);
			(void)FUNC25(fd, "kernel=\"", 8L);
			(void)FUNC25(fd, kernel, FUNC20(kernel));
			(void)FUNC25(fd, "\"\n", 2);
			FUNC0(fd);
		}
	}

	/* Log the reboot. */
	if (!lflag)  {
		if ((user = FUNC6()) == NULL)
			user = (pw = FUNC9(FUNC11())) ?
			    pw->pw_name : "???";
		if (dohalt) {
			FUNC14("halt", 0, LOG_AUTH | LOG_CONS);
			FUNC23(LOG_CRIT, "halted by %s", user);
		} else if (howto & RB_REROOT) {
			FUNC14("reroot", 0, LOG_AUTH | LOG_CONS);
			FUNC23(LOG_CRIT, "rerooted by %s", user);
		} else if (howto & RB_POWEROFF) {
			FUNC14("reboot", 0, LOG_AUTH | LOG_CONS);
			FUNC23(LOG_CRIT, "powered off by %s", user);
		} else if (howto & RB_POWERCYCLE) {
			FUNC14("reboot", 0, LOG_AUTH | LOG_CONS);
			FUNC23(LOG_CRIT, "power cycled by %s", user);
		} else {
			FUNC14("reboot", 0, LOG_AUTH | LOG_CONS);
			FUNC23(LOG_CRIT, "rebooted by %s", user);
		}
	}
	utx.ut_type = SHUTDOWN_TIME;
	FUNC10(&utx.ut_tv, NULL);
	FUNC15(&utx);

	/*
	 * Do a sync early on, so disks start transfers while we're off
	 * killing processes.  Don't worry about writes done before the
	 * processes die, the reboot system call syncs the disks.
	 */
	if (!nflag)
		FUNC22();

	/*
	 * Ignore signals that we can get as a result of killing
	 * parents, group leaders, etc.
	 */
	(void)FUNC17(SIGHUP,  SIG_IGN);
	(void)FUNC17(SIGINT,  SIG_IGN);
	(void)FUNC17(SIGQUIT, SIG_IGN);
	(void)FUNC17(SIGTERM, SIG_IGN);
	(void)FUNC17(SIGTSTP, SIG_IGN);

	/*
	 * If we're running in a pipeline, we don't want to die
	 * after killing whatever we're writing to.
	 */
	(void)FUNC17(SIGPIPE, SIG_IGN);

	/*
	 * Only init(8) can perform rerooting.
	 */
	if (howto & RB_REROOT) {
		if (FUNC12(1, SIGEMT) == -1)
			FUNC1(1, "SIGEMT init");

		return (0);
	}

	/* Just stop init -- if we fail, we'll restart it. */
	if (FUNC12(1, SIGTSTP) == -1)
		FUNC1(1, "SIGTSTP init");

	/* Send a SIGTERM first, a chance to save the buffers. */
	if (FUNC12(-1, SIGTERM) == -1 && errno != ESRCH)
		FUNC1(1, "SIGTERM processes");

	/*
	 * After the processes receive the signal, start the rest of the
	 * buffers on their way.  Wait 5 seconds between the SIGTERM and
	 * the SIGKILL to give everybody a chance. If there is a lot of
	 * paging activity then wait longer, up to a maximum of approx
	 * 60 seconds.
	 */
	FUNC18(2);
	for (i = 0; i < 20; i++) {
		pageins = FUNC4();
		if (!nflag)
			FUNC22();
		FUNC18(3);
		if (FUNC4() == pageins)
			break;
	}

	for (i = 1;; ++i) {
		if (FUNC12(-1, SIGKILL) == -1) {
			if (errno == ESRCH)
				break;
			goto restart;
		}
		if (i > 5) {
			(void)FUNC3(stderr,
			    "WARNING: some process(es) wouldn't die\n");
			break;
		}
		(void)FUNC18(2 * i);
	}

	FUNC16(howto);
	/* FALLTHROUGH */

restart:
	sverrno = errno;
	FUNC2(1, "%s%s", FUNC12(1, SIGHUP) == -1 ? "(can't restart init): " : "",
	    FUNC19(sverrno));
	/* NOTREACHED */
}