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
typedef  void* uint16_t ;
typedef  int /*<<< orphan*/  tm ;
typedef  int /*<<< orphan*/  timestr ;
struct tm {int tm_hour; int tm_min; int tm_sec; } ;
struct passwd {void* pw_uid; } ;
struct group {void* gr_gid; } ;
typedef  scalar_t__ pid_t ;
typedef  void* au_event_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOSYS ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPT_A ; 
 int /*<<< orphan*/  OPT_a ; 
 int /*<<< orphan*/  OPT_b ; 
 int /*<<< orphan*/  OPT_c ; 
 int /*<<< orphan*/  OPT_d ; 
 int /*<<< orphan*/  OPT_e ; 
 int /*<<< orphan*/  OPT_f ; 
 int /*<<< orphan*/  OPT_g ; 
 int /*<<< orphan*/  OPT_j ; 
 int /*<<< orphan*/  OPT_m ; 
 int /*<<< orphan*/  OPT_r ; 
 int /*<<< orphan*/  OPT_u ; 
 int /*<<< orphan*/  OPT_v ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct tm*,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void** FUNC12 (int /*<<< orphan*/ ) ; 
 struct group* FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int,char**,char*) ; 
 struct passwd* FUNC15 (int /*<<< orphan*/ ) ; 
 void** FUNC16 (int) ; 
 int /*<<< orphan*/  maskp ; 
 void* FUNC17 (struct tm*) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  opttochk ; 
 void* p_atime ; 
 void* p_auid ; 
 void* p_btime ; 
 void* p_egid ; 
 void* p_euid ; 
 void** p_evec ; 
 int p_evec_alloc ; 
 int p_evec_used ; 
 void* p_rgid ; 
 void* p_ruid ; 
 void* p_subid ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 void** FUNC19 (void**,int) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stdin ; 
 char* FUNC21 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC22 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,struct tm*) ; 
 void* FUNC24 (int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 scalar_t__ FUNC26 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

int
FUNC27(int argc, char **argv)
{
	struct group *grp;
	struct passwd *pw;
	struct tm tm;
	au_event_t *n;
	FILE *fp;
	int i;
	char *objval, *converr;
	int ch;
	char timestr[128];
	char *fname;
	uint16_t *etp;
#ifdef HAVE_CAP_ENTER
	int retval, status;
	pid_t childpid, pid;
#endif

	converr = NULL;

	while ((ch = FUNC14(argc, argv, "Aa:b:c:d:e:f:g:j:m:o:r:u:v")) != -1) {
		switch(ch) {
		case 'A':
			FUNC1(opttochk, OPT_A);
			break;

		case 'a':
			if (FUNC0(opttochk, OPT_a)) {
				FUNC25("d is exclusive with a and b");
			}
			FUNC1(opttochk, OPT_a);
			FUNC3(&tm, sizeof(tm));
			FUNC23(optarg, "%Y%m%d%H%M%S", &tm);
			FUNC22(timestr, sizeof(timestr), "%Y%m%d%H%M%S",
			    &tm);
			/* fprintf(stderr, "Time converted = %s\n", timestr); */
			p_atime = FUNC17(&tm);
			break; 	

		case 'b':
			if (FUNC0(opttochk, OPT_b)) {
				FUNC25("d is exclusive with a and b");
			}
			FUNC1(opttochk, OPT_b);
			FUNC3(&tm, sizeof(tm));
			FUNC23(optarg, "%Y%m%d%H%M%S", &tm);
			FUNC22(timestr, sizeof(timestr), "%Y%m%d%H%M%S",
			    &tm);
			/* fprintf(stderr, "Time converted = %s\n", timestr); */
			p_btime = FUNC17(&tm);
			break; 	

		case 'c':
			if (0 != FUNC11(optarg, &maskp)) {
				/* Incorrect class */
				FUNC25("Incorrect class");
			}
			FUNC1(opttochk, OPT_c);
			break;

		case 'd':
			if (FUNC0(opttochk, OPT_b) || FUNC0(opttochk,
			    OPT_a))
				FUNC25("'d' is exclusive with 'a' and 'b'");
			FUNC1(opttochk, OPT_d);
			FUNC3(&tm, sizeof(tm));
			FUNC23(optarg, "%Y%m%d", &tm);
			FUNC22(timestr, sizeof(timestr), "%Y%m%d", &tm);
			/* fprintf(stderr, "Time converted = %s\n", timestr); */
			p_atime = FUNC17(&tm);
			tm.tm_hour = 23;
			tm.tm_min = 59;
			tm.tm_sec = 59;
			FUNC22(timestr, sizeof(timestr), "%Y%m%d", &tm);
			/* fprintf(stderr, "Time converted = %s\n", timestr); */
			p_btime = FUNC17(&tm);
			break;

		case 'e':
			p_euid = FUNC24(optarg, &converr, 10);
			if (*converr != '\0') {
				/* Try the actual name */
				if ((pw = FUNC15(optarg)) == NULL)
					break;
				p_euid = pw->pw_uid;
			}
			FUNC1(opttochk, OPT_e);
			break;

		case 'f':
			p_egid = FUNC24(optarg, &converr, 10);
			if (*converr != '\0') {
				/* Try actual group name. */
				if ((grp = FUNC13(optarg)) == NULL)
					break;
				p_egid = grp->gr_gid;
			}
			FUNC1(opttochk, OPT_f);
			break;

		case 'g':
			p_rgid = FUNC24(optarg, &converr, 10);
			if (*converr != '\0') {
				/* Try actual group name. */
				if ((grp = FUNC13(optarg)) == NULL) 
					break;
				p_rgid = grp->gr_gid;
			}
			FUNC1(opttochk, OPT_g);
			break;

		case 'j':
			p_subid = FUNC24(optarg, (char **)NULL, 10);
			FUNC1(opttochk, OPT_j);
			break;

		case 'm':
			if (p_evec == NULL) {
				p_evec_alloc = 32;
				p_evec = FUNC16(sizeof(*etp) * p_evec_alloc);
				if (p_evec == NULL)
					FUNC5(1, "malloc");
			} else if (p_evec_alloc == p_evec_used) {
				p_evec_alloc <<= 1;
				p_evec = FUNC19(p_evec,
				    sizeof(*p_evec) * p_evec_alloc);
				if (p_evec == NULL)
					FUNC5(1, "realloc");
			}
			etp = &p_evec[p_evec_used++];
			*etp = FUNC24(optarg, (char **)NULL, 10);
			if (*etp == 0) {
				/* Could be the string representation. */
				n = FUNC12(optarg);
				if (n == NULL)
					FUNC25("Incorrect event name");
				*etp = *n;
			}
			FUNC1(opttochk, OPT_m);
			break;

		case 'o':
			objval = FUNC21(optarg, '=');
			if (objval != NULL) {
				*objval = '\0';
				objval += 1;			
				FUNC18(optarg, objval);
			}
			break;

		case 'r':
			p_ruid = FUNC24(optarg, &converr, 10);
			if (*converr != '\0') {
				if ((pw = FUNC15(optarg)) == NULL)
					break;
				p_ruid = pw->pw_uid;
			}
			FUNC1(opttochk, OPT_r);
			break;

		case 'u':
			p_auid = FUNC24(optarg, &converr, 10);
			if (*converr != '\0') {
				if ((pw = FUNC15(optarg)) == NULL)
					break;
				p_auid = pw->pw_uid;
			}
			FUNC1(opttochk, OPT_u);
			break;

		case 'v':
			FUNC1(opttochk, OPT_v);
			break;

		case '?':
		default:
			FUNC25("Unknown option");
		}
	}
	argv += optind;
	argc -= optind;

	if (argc == 0) {
#ifdef HAVE_CAP_ENTER
		retval = cap_enter();
		if (retval != 0 && errno != ENOSYS)
			err(EXIT_FAILURE, "cap_enter");
#endif
		if (FUNC20(stdin) == -1)
			FUNC6(EXIT_FAILURE,
			    "Couldn't select records from stdin");
		FUNC7(EXIT_SUCCESS);
	}

	/*
	 * XXX: We should actually be merging records here.
	 */
	for (i = 0; i < argc; i++) {
		fname = argv[i];
		fp = FUNC9(fname, "r");
		if (fp == NULL)
			FUNC6(EXIT_FAILURE, "Couldn't open %s", fname);

		/*
		 * If operating with sandboxing, create a sandbox process for
		 * each trail file we operate on.  This avoids the need to do
		 * fancy things with file descriptors, etc, when iterating on
		 * a list of arguments.
		 *
		 * NB: Unlike praudit(1), auditreduce(1) terminates if it hits
		 * any errors.  Propagate the error from the child to the
		 * parent if any problems arise.
		 */
#ifdef HAVE_CAP_ENTER
		childpid = fork();
		if (childpid == 0) {
			/* Child. */
			retval = cap_enter();
			if (retval != 0 && errno != ENOSYS)
				errx(EXIT_FAILURE, "cap_enter");
			if (select_records(fp) == -1)
				errx(EXIT_FAILURE,
				    "Couldn't select records %s", fname);
			exit(0);
		}

		/* Parent.  Await child termination, check exit value. */
		while ((pid = waitpid(childpid, &status, 0)) != childpid);
		if (WEXITSTATUS(status) != 0)
			exit(EXIT_FAILURE);
#else
		if (FUNC20(fp) == -1)
			FUNC6(EXIT_FAILURE, "Couldn't select records %s",
			    fname);
#endif
		FUNC8(fp);
	}
	FUNC7(EXIT_SUCCESS);
}