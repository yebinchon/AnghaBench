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
typedef  int /*<<< orphan*/  u_long ;
struct quotafile {int dummy; } ;
struct passwd {int /*<<< orphan*/  pw_name; scalar_t__ pw_uid; } ;
struct group {int /*<<< orphan*/  gr_name; scalar_t__ gr_gid; } ;
struct fstab {int /*<<< orphan*/  fs_spec; int /*<<< orphan*/  fs_file; } ;

/* Variables and functions */
 char* FSTAB ; 
 int /*<<< orphan*/  GRPQUOTA ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  USRQUOTA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ aflag ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int cflag ; 
 int FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (char*,struct quotafile*,struct quotafile*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 struct fstab* FUNC11 () ; 
 struct group* FUNC12 () ; 
 int FUNC13 (int,char**,char*) ; 
 struct passwd* FUNC14 () ; 
 scalar_t__ gflag ; 
 int FUNC15 (int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC16 (struct quotafile*) ; 
 struct quotafile* FUNC17 (struct fstab*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ uflag ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  vflag ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 

int
FUNC23(int argc, char *argv[])
{
	struct fstab *fs;
	struct passwd *pw;
	struct group *gr;
	struct quotafile *qfu, *qfg;
	int i, argnum, maxrun, errs, ch;
	long done = 0;
	char *name;

	errs = maxrun = 0;
	while ((ch = FUNC13(argc, argv, "ac:guvl:")) != -1) {
		switch(ch) {
		case 'a':
			aflag++;
			break;
		case 'c':
			if (cflag)
				FUNC21();
			cflag = FUNC1(optarg);
			break;
		case 'g':
			gflag++;
			break;
		case 'u':
			uflag++;
			break;
		case 'v':
			vflag++;
			break;
		case 'l':
			maxrun = FUNC1(optarg);
			break;
		default:
			FUNC21();
		}
	}
	argc -= optind;
	argv += optind;
	if ((argc == 0 && !aflag) || (argc > 0 && aflag))
		FUNC21();
	if (cflag && cflag != 32 && cflag != 64)
		FUNC21();
	if (!gflag && !uflag) {
		gflag++;
		uflag++;
	}
	if (gflag) {
		FUNC19();
		while ((gr = FUNC12()) != NULL)
			(void) FUNC0((u_long)gr->gr_gid, GRPQUOTA, gr->gr_name,
			    NULL);
		FUNC6();
	}
	if (uflag) {
		FUNC20();
		while ((pw = FUNC14()) != NULL)
			(void) FUNC0((u_long)pw->pw_uid, USRQUOTA, pw->pw_name,
			    NULL);
		FUNC7();
	}
	/*
	 * The maxrun (-l) option is now deprecated.
	 */
	if (maxrun > 0)
		FUNC22("the -l option is now deprecated");
	if (aflag)
		FUNC9(FUNC3(uflag, gflag));
	if (FUNC18() == 0)
		FUNC8(1, "%s: can't open", FSTAB);
	while ((fs = FUNC11()) != NULL) {
		if (((argnum = FUNC15(fs->fs_file, argv, argc)) >= 0 ||
		     (argnum = FUNC15(fs->fs_spec, argv, argc)) >= 0) &&
		    (name = FUNC2(fs->fs_spec))) {
			done |= 1 << argnum;
			qfu = NULL;
			if (uflag)
				qfu = FUNC17(fs, USRQUOTA, O_CREAT|O_RDWR);
			qfg = NULL;
			if (gflag)
				qfg = FUNC17(fs, GRPQUOTA, O_CREAT|O_RDWR);
			if (qfu == NULL && qfg == NULL)
				continue;
			errs += FUNC4(name, qfu, qfg);
			if (qfu)
				FUNC16(qfu);
			if (qfg)
				FUNC16(qfg);
		}
	}
	FUNC5();
	for (i = 0; i < argc; i++)
		if ((done & (1 << i)) == 0)
			FUNC10(stderr, "%s not found in %s\n",
				argv[i], FSTAB);
	FUNC9(errs);
}