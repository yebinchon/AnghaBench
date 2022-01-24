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
struct timeval {long tv_sec; long tv_usec; } ;
struct sigvec {int /*<<< orphan*/  sv_mask; scalar_t__ sv_flags; int /*<<< orphan*/  sv_handler; } ;
struct msqid_ds {int dummy; } ;
struct TYPE_3__ {int code; int /*<<< orphan*/  mtype; struct timeval tv; } ;
struct TYPE_4__ {TYPE_1__ msgb; int /*<<< orphan*/  msgp; } ;
typedef  TYPE_2__ MsgBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*,struct timeval*) ; 
 int /*<<< orphan*/  BUFSIZ ; 
 int /*<<< orphan*/  CLIENT ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  DELTA1 129 
#define  DELTA2 128 
 scalar_t__ EEXIST ; 
 scalar_t__ EINTR ; 
 char EOF ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int IPC_CREAT ; 
 int IPC_EXCL ; 
 int /*<<< orphan*/  IPC_RMID ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  KEY ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_LOCAL6 ; 
 int /*<<< orphan*/  LOG_PID ; 
 int /*<<< orphan*/  MSGSIZE ; 
 int /*<<< orphan*/  PROCLOCK ; 
 int /*<<< orphan*/  ResetClockRate ; 
 int /*<<< orphan*/  SERVER ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  TIOCNOTTY ; 
 int /*<<< orphan*/  _IONBF ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int const) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int mqid ; 
 int FUNC12 (int,int /*<<< orphan*/ ,struct msqid_ds*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int) ; 
 int FUNC14 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC17 (int) ; 
 char FUNC18 (int,char**,char*) ; 
 int FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) ()) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,struct sigvec*,struct sigvec*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  sysdebug ; 
 double FUNC29 (struct timeval) ; 
 scalar_t__ verbose ; 

int
FUNC30(
	int argc,
	char *argv[]
	)
{
	struct timeval remains;
	struct sigvec vec;
	MsgBuf msg;
	char ch;
	int nofork = 0;
	int fd;

	progname = argv[0];

#ifdef LOG_LOCAL6
	openlog("adjtimed", LOG_PID, LOG_LOCAL6);
#else
	FUNC20("adjtimed", LOG_PID);
#endif

	while ((ch = FUNC18(argc, argv, "hkrvdfp:")) != EOF) {
		switch (ch) {
		    case 'k':
		    case 'r':
			if ((mqid = FUNC13(KEY, 0)) != -1) {
				if (FUNC12(mqid, IPC_RMID, (struct msqid_ds *)0) == -1) {
					FUNC16(LOG_ERR, "remove old message queue: %m");
					FUNC21("adjtimed: remove old message queue");
					FUNC6(1);
				}
			}

			if (ch == 'k')
			    FUNC6(0);

			break;

		    case 'v':
			++verbose, nofork = 1;
			break;

		    case 'd':
			++sysdebug;
			break;

		    case 'f':
			nofork = 1;
			break;

		    case 'p':
			FUNC10("adjtimed: -p option ignored\n", stderr);
			break;

		    default:
			FUNC24("usage: adjtimed -hkrvdf");
			FUNC24("-h\thelp");
			FUNC24("-k\tkill existing adjtimed, if any");
			FUNC24("-r\trestart (kills existing adjtimed, if any)");
			FUNC24("-v\tdebug output (repeat for more output)");
			FUNC24("-d\tsyslog output (repeat for more output)");
			FUNC24("-f\tno fork");
			FUNC16(LOG_ERR, "usage error");
			FUNC6(1);
		} /* switch */
	} /* while */

	if (!nofork) {
		switch (FUNC8()) {
		    case 0:
			FUNC5(FUNC7(stdin));
			FUNC5(FUNC7(stdout));
			FUNC5(FUNC7(stderr));

#ifdef TIOCNOTTY
			if ((fd = open("/dev/tty")) != -1) {
				ioctl(fd, TIOCNOTTY, 0);
				close(fd);
			}
#else
			FUNC25();
#endif
			break;

		    case -1:
			FUNC16(LOG_ERR, "fork: %m");
			FUNC21("adjtimed: fork");
			FUNC6(1);

		    default:
			FUNC6(0);
		} /* switch */
	} /* if */

	if (nofork) {
		FUNC26(stdout, NULL, _IONBF, BUFSIZ);
		FUNC26(stderr, NULL, _IONBF, BUFSIZ);
	}

	FUNC16(LOG_INFO, "started");
	if (verbose) FUNC23("adjtimed: started\n");

	if (FUNC3() == -1)
	    FUNC2(2);

	(void)FUNC27(SIGHUP, SIG_IGN);
	(void)FUNC27(SIGINT, SIG_IGN);
	(void)FUNC27(SIGQUIT, SIG_IGN);
	(void)FUNC27(SIGTERM, Cleanup);

	vec.sv_handler = ResetClockRate;
	vec.sv_flags = 0;
	vec.sv_mask = ~0;
	FUNC28(SIGALRM, &vec, (struct sigvec *)0);

	if (FUNC13(KEY, IPC_CREAT|IPC_EXCL) == -1) {
		if (errno == EEXIST) {
			FUNC16(LOG_ERR, "message queue already exists, use -r to remove it");
			FUNC10("adjtimed: message queue already exists, use -r to remove it\n",
			      stderr);
			FUNC2(1);
		}

		FUNC16(LOG_ERR, "create message queue: %m");
		FUNC21("adjtimed: create message queue");
		FUNC2(1);
	}

	if ((mqid = FUNC13(KEY, 0)) == -1) {
		FUNC16(LOG_ERR, "get message queue id: %m");
		FUNC21("adjtimed: get message queue id");
		FUNC2(1);
	}
  
	/* Lock process in memory to improve response time */
	if (FUNC22(PROCLOCK)) {
		FUNC16(LOG_ERR, "plock: %m");
		FUNC21("adjtimed: plock");
		FUNC1();
	}

	/* Also raise process priority.
	 * If we do not get run when we want, this leads to bad timekeeping
	 * and "Previous time adjustment didn't complete" gripes from xntpd.
	 */
	if (FUNC17(-10) == -1) {
		FUNC16(LOG_ERR, "nice: %m");
		FUNC21("adjtimed: nice");
		FUNC1();
	}

	for (;;) {
		if (FUNC14(mqid, &msg.msgp, MSGSIZE, CLIENT, 0) == -1) {
			if (errno == EINTR) continue;
			FUNC16(LOG_ERR, "read message: %m");
			FUNC21("adjtimed: read message");
			FUNC1();
		}

		switch (msg.msgb.code) {
		    case DELTA1:
		    case DELTA2:
			FUNC0(&msg.msgb.tv, &remains);

			if (msg.msgb.code == DELTA2) {
				msg.msgb.tv = remains;
				msg.msgb.mtype = SERVER;

				while (FUNC15(mqid, &msg.msgp, MSGSIZE, 0) == -1) {
					if (errno == EINTR) continue;
					FUNC16(LOG_ERR, "send message: %m");
					FUNC21("adjtimed: send message");
					FUNC1();
				}
			}

			if (remains.tv_sec + remains.tv_usec != 0L) {
				if (verbose) {
					FUNC23("adjtimed: previous correction remaining %.6fs\n",
					       FUNC29(remains));
				}
				if (sysdebug) {
					FUNC16(LOG_INFO, "previous correction remaining %.6fs",
						FUNC29(remains));
				}
			}
			break;

		    default:
			FUNC9(stderr, "adjtimed: unknown message code %d\n", msg.msgb.code);
			FUNC16(LOG_ERR, "unknown message code %d", msg.msgb.code);
		} /* switch */
	} /* loop */
}