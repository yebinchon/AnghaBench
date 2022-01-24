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
struct rlimit {int /*<<< orphan*/  rlim_max; int /*<<< orphan*/  rlim_cur; } ;
struct TYPE_4__ {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_3__ {int tv_sec; scalar_t__ tv_usec; } ;
struct itimerval {TYPE_2__ it_value; TYPE_1__ it_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIT ; 
 int ERESTART ; 
 int /*<<< orphan*/  Eflag ; 
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  RLIMIT_DATA ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGINFO ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 scalar_t__ SIG_IGN ; 
 int /*<<< orphan*/  Zflag ; 
 scalar_t__ alarmhandler ; 
 int FUNC0 (char,char*,int /*<<< orphan*/ ,int) ; 
 int bflag ; 
 int bkgrdcheck ; 
 int bkgrdflag ; 
 scalar_t__ catch ; 
 scalar_t__ catchquit ; 
 int FUNC1 (char*) ; 
 scalar_t__ ckclean ; 
 int cvtlevel ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,char**,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct rlimit*) ; 
 scalar_t__ infohandler ; 
 scalar_t__ inoopt ; 
 int lfmode ; 
 int /*<<< orphan*/  nflag ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  preen ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 scalar_t__ returntosingle ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct itimerval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct rlimit*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int skipclean ; 
 int surrender ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int wantrestart ; 
 int /*<<< orphan*/  yflag ; 
 int /*<<< orphan*/  zflag ; 

int
FUNC12(int argc, char *argv[])
{
	int ch;
	struct rlimit rlimit;
	struct itimerval itimerval;
	int fsret;
	int ret = 0;

	FUNC10();
	skipclean = 1;
	inoopt = 0;
	while ((ch = FUNC4(argc, argv, "b:Bc:CdEfFm:npRrSyZz")) != -1) {
		switch (ch) {
		case 'b':
			skipclean = 0;
			bflag = FUNC0('b', "number", optarg, 10);
			FUNC6("Alternate super block location: %jd\n", bflag);
			break;

		case 'B':
			bkgrdflag = 1;
			break;

		case 'c':
			skipclean = 0;
			cvtlevel = FUNC0('c', "conversion level", optarg,
			    10);
			if (cvtlevel < 3)
				FUNC2(EEXIT, "cannot do level %d conversion",
				    cvtlevel);
			break;

		case 'd':
			debug++;
			break;

		case 'E':
			Eflag++;
			break;

		case 'f':
			skipclean = 0;
			break;

		case 'F':
			bkgrdcheck = 1;
			break;

		case 'm':
			lfmode = FUNC0('m', "mode", optarg, 8);
			if (lfmode &~ 07777)
				FUNC2(EEXIT, "bad mode to -m: %o", lfmode);
			FUNC6("** lost+found creation mode %o\n", lfmode);
			break;

		case 'n':
			nflag++;
			yflag = 0;
			break;

		case 'p':
			preen++;
			/*FALLTHROUGH*/

		case 'C':
			ckclean++;
			break;

		case 'R':
			wantrestart = 1;
			break;
		case 'r':
			inoopt++;
			break;

		case 'S':
			surrender = 1;
			break;

		case 'y':
			yflag++;
			nflag = 0;
			break;

		case 'Z':
			Zflag++;
			break;

		case 'z':
			zflag++;
			break;

		default:
			FUNC11();
		}
	}
	argc -= optind;
	argv += optind;

	if (!argc)
		FUNC11();

	if (FUNC9(SIGINT, SIG_IGN) != SIG_IGN)
		(void)FUNC9(SIGINT, catch);
	if (ckclean)
		(void)FUNC9(SIGQUIT, catchquit);
	FUNC9(SIGINFO, infohandler);
	if (bkgrdflag) {
		FUNC9(SIGALRM, alarmhandler);
		itimerval.it_interval.tv_sec = 5;
		itimerval.it_interval.tv_usec = 0;
		itimerval.it_value.tv_sec = 5;
		itimerval.it_value.tv_usec = 0;
		FUNC7(ITIMER_REAL, &itimerval, NULL);
	}
	/*
	 * Push up our allowed memory limit so we can cope
	 * with huge file systems.
	 */
	if (FUNC5(RLIMIT_DATA, &rlimit) == 0) {
		rlimit.rlim_cur = rlimit.rlim_max;
		(void)FUNC8(RLIMIT_DATA, &rlimit);
	}
	while (argc > 0) {
		if ((fsret = FUNC1(*argv)) == ERESTART)
			continue;
		ret |= fsret;
		argc--;
		argv++;
	}

	if (returntosingle)
		ret = 2;
	FUNC3(ret);
}