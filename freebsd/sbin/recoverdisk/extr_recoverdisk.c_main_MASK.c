#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ time_t ;
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  intmax_t ;
struct TYPE_5__ {scalar_t__ len; scalar_t__ start; int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFFILEMODE ; 
 int /*<<< orphan*/  DIOCGMEDIASIZE ; 
 int /*<<< orphan*/  DIOCGSECTORSIZE ; 
 int /*<<< orphan*/  DIOCGSTRIPESIZE ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENXIO ; 
 size_t FUNC0 (scalar_t__,scalar_t__) ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  PRINT_HEADER ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,size_t,scalar_t__,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  SIGINT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int aborting ; 
 int bigsize ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (int,struct stat*) ; 
 scalar_t__ FUNC12 (int,scalar_t__) ; 
 int FUNC13 (int,char* const*,char*) ; 
 int FUNC14 (int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  list ; 
 TYPE_1__* lp ; 
 int /*<<< orphan*/  lumps ; 
 int /*<<< orphan*/ * FUNC15 (int) ; 
 int medsize ; 
 int minsize ; 
 int /*<<< orphan*/  FUNC16 (size_t,size_t,int) ; 
 int FUNC17 (char* const,int,...) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 size_t FUNC18 (int,int /*<<< orphan*/ *,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 size_t FUNC20 (int,int /*<<< orphan*/ *,size_t,scalar_t__) ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 int FUNC22 (int,int) ; 
 int /*<<< orphan*/ * rworklist ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  sighandler ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 void* FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__) ; 
 void* FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/ * wworklist ; 

int
FUNC30(int argc, char * const argv[])
{
	int ch;
	int fdr, fdw;
	off_t t, d, start, len;
	size_t i, j;
	int error, state;
	u_char *buf;
	u_int sectorsize;
	off_t stripesize;
	time_t t1, t2;
	struct stat sb;
	u_int n, snapshot = 60;

	while ((ch = FUNC13(argc, argv, "b:r:w:s:")) != -1) {
		switch (ch) {
		case 'b':
			bigsize = FUNC27(optarg, NULL, 0);
			break;
		case 'r':
			rworklist = FUNC25(optarg);
			if (rworklist == NULL)
				FUNC6(1, "Cannot allocate enough memory");
			break;
		case 's':
			snapshot = FUNC27(optarg, NULL, 0);
			break;
		case 'w':
			wworklist = FUNC25(optarg);
			if (wworklist == NULL)
				FUNC6(1, "Cannot allocate enough memory");
			break;
		default:
			FUNC29();
			/* NOTREACHED */
		}
	}
	argc -= optind;
	argv += optind;

	if (argc < 1 || argc > 2)
		FUNC29();

	fdr = FUNC17(argv[0], O_RDONLY);
	if (fdr < 0)
		FUNC6(1, "Cannot open read descriptor %s", argv[0]);

	error = FUNC11(fdr, &sb);
	if (error < 0)
		FUNC6(1, "fstat failed");
	if (FUNC2(sb.st_mode) || FUNC3(sb.st_mode)) {
		error = FUNC14(fdr, DIOCGSECTORSIZE, &sectorsize);
		if (error < 0)
			FUNC6(1, "DIOCGSECTORSIZE failed");

		error = FUNC14(fdr, DIOCGSTRIPESIZE, &stripesize);
		if (error == 0 && stripesize > sectorsize)
			sectorsize = stripesize;

		minsize = sectorsize;
		bigsize = FUNC22(bigsize, sectorsize);

		error = FUNC14(fdr, DIOCGMEDIASIZE, &t);
		if (error < 0)
			FUNC6(1, "DIOCGMEDIASIZE failed");
	} else {
		t = sb.st_size;
	}

	if (bigsize < minsize)
		bigsize = minsize;

	for (ch = 0; (bigsize >> ch) > minsize; ch++)
		continue;
	medsize = bigsize >> (ch / 2);
	medsize = FUNC22(medsize, minsize);

	FUNC9(stderr, "Bigsize = %d, medsize = %d, minsize = %d\n",
	    bigsize, medsize, minsize);

	buf = FUNC15(bigsize);
	if (buf == NULL)
		FUNC6(1, "Cannot allocate %zu bytes buffer", bigsize);

	if (argc > 1) {
		fdw = FUNC17(argv[1], O_WRONLY | O_CREAT, DEFFILEMODE);
		if (fdw < 0)
			FUNC6(1, "Cannot open write descriptor %s", argv[1]);
		if (FUNC12(fdw, t) < 0)
			FUNC6(1, "Cannot truncate output %s to %jd bytes",
			    argv[1], (intmax_t)t);
	} else
		fdw = -1;

	if (rworklist != NULL) {
		d = FUNC21(t);
	} else {
		FUNC16(0, t, 0);
		d = 0;
	}
	if (wworklist != NULL)
		FUNC24(SIGINT, sighandler);

	t1 = 0;
	start = len = i = state = 0;
	PRINT_HEADER;
	n = 0;
	for (;;) {
		lp = FUNC4(&lumps);
		if (lp == NULL)
			break;
		while (lp->len > 0 && !aborting) {
			/* These are only copied for printing stats */
			start = lp->start;
			len = lp->len;
			state = lp->state;

			i = FUNC0(lp->len, (off_t)bigsize);
			if (lp->state == 1)
				i = FUNC0(lp->len, (off_t)medsize);
			if (lp->state > 1)
				i = FUNC0(lp->len, (off_t)minsize);
			FUNC28(&t2);
			if (t1 != t2 || lp->len < (off_t)bigsize) {
				FUNC1(start, i, len, state, d, t);
				t1 = t2;
				if (++n == snapshot) {
					FUNC23();
					n = 0;
				}
			}
			if (i == 0) {
				FUNC7(1, "BOGUS i %10jd", (intmax_t)i);
			}
			FUNC8(stdout);
			j = FUNC18(fdr, buf, i, lp->start);
			if (j == i) {
				d += i;
				if (fdw >= 0)
					j = FUNC20(fdw, buf, i, lp->start);
				else
					j = i;
				if (j != i)
					FUNC19("\nWrite error at %jd/%zu\n",
					    lp->start, i);
				lp->start += i;
				lp->len -= i;
				continue;
			}
			FUNC19("\n%jd %zu failed (%s)\n",
			    lp->start, i, FUNC26(errno));
			if (errno == EINVAL) {
				FUNC19("read() size too big? Try with -b 131072");
				aborting = 1;
			}
			if (errno == ENXIO)
				aborting = 1;
			FUNC16(lp->start, i, lp->state + 1);
			lp->start += i;
			lp->len -= i;
		}
		if (aborting) {
			FUNC23();
			return (0);
		}
		FUNC5(&lumps, lp, list);
		FUNC10(lp);
	}
	FUNC1(start, i, len, state, d, t);
	FUNC23();
	FUNC19("\nCompleted\n");
	return (0);
}