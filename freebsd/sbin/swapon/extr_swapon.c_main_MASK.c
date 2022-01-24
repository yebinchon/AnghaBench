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
struct fstab {char* fs_mntops; char* fs_spec; int /*<<< orphan*/  fs_type; } ;

/* Variables and functions */
 int Eflag ; 
 int /*<<< orphan*/  FSTAB_SW ; 
 scalar_t__ SWAPCTL ; 
 scalar_t__ SWAPOFF ; 
 scalar_t__ SWAPON ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct fstab* FUNC1 () ; 
 int FUNC2 (int,char**,char*) ; 
 char* FUNC3 () ; 
 char* optarg ; 
 int /*<<< orphan*/  optind ; 
 scalar_t__ orig_prog ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char const*) ; 
 scalar_t__ qflag ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 char* FUNC9 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ which_prog ; 

int
FUNC12(int argc, char **argv)
{
	struct fstab *fsp;
	const char *swfile;
	char *ptr;
	int ret, ch, doall;
	int sflag, lflag, late, hflag;
	const char *etc_fstab;

	sflag = lflag = late = hflag = 0;
	if ((ptr = FUNC7(argv[0], '/')) == NULL)
		ptr = argv[0];
	if (FUNC8(ptr, "swapon") != NULL)
		which_prog = SWAPON;
	else if (FUNC8(ptr, "swapoff") != NULL)
		which_prog = SWAPOFF;
	orig_prog = which_prog;
	
	doall = 0;
	etc_fstab = NULL;
	while ((ch = FUNC2(argc, argv, "AadEghklLmqsUF:")) != -1) {
		switch(ch) {
		case 'A':
			if (which_prog == SWAPCTL) {
				doall = 1;
				which_prog = SWAPON;
			} else
				FUNC11();
			break;
		case 'a':
			if (which_prog == SWAPON || which_prog == SWAPOFF)
				doall = 1;
			else
				which_prog = SWAPON;
			break;
		case 'd':
			if (which_prog == SWAPCTL)
				which_prog = SWAPOFF;
			else
				FUNC11();
			break;
		case 'E':
			if (which_prog == SWAPON)
				Eflag = 2;
			else
				FUNC11();
			break;
		case 'g':
			hflag = 'G';
			break;
		case 'h':
			hflag = 'H';
			break;
		case 'k':
			hflag = 'K';
			break;
		case 'l':
			lflag = 1;
			break;
		case 'L':
			late = 1;
			break;
		case 'm':
			hflag = 'M';
			break;
		case 'q':
			if (which_prog == SWAPON || which_prog == SWAPOFF)
				qflag = 1;
			break;
		case 's':
			sflag = 1;
			break;
		case 'U':
			if (which_prog == SWAPCTL) {
				doall = 1;
				which_prog = SWAPOFF;
			} else
				FUNC11();
			break;
		case 'F':
			etc_fstab = optarg;
			break;
		case '?':
		default:
			FUNC11();
		}
	}
	argv += optind;

	ret = 0;
	swfile = NULL;
	if (etc_fstab != NULL)
		FUNC5(etc_fstab);
	if (which_prog == SWAPON || which_prog == SWAPOFF) {
		if (doall) {
			while ((fsp = FUNC1()) != NULL) {
				if (FUNC6(fsp->fs_type, FSTAB_SW) != 0)
					continue;
				if (FUNC8(fsp->fs_mntops, "noauto") != NULL)
					continue;
				if (which_prog != SWAPOFF &&
				    FUNC8(fsp->fs_mntops, "late") &&
				    late == 0)
					continue;
				if (which_prog == SWAPOFF &&
				    FUNC8(fsp->fs_mntops, "late") == NULL &&
				    late != 0)
					continue;
				Eflag |= (FUNC8(fsp->fs_mntops, "trimonce") != NULL);
				swfile = FUNC9(fsp->fs_spec, 1,
				    fsp->fs_mntops);
				Eflag &= ~1;
				if (swfile == NULL) {
					ret = 1;
					continue;
				}
				if (qflag == 0) {
					FUNC4("%s: %sing %s as swap device\n",
					    FUNC3(),
					    (which_prog == SWAPOFF) ?
					    "remov" : "add", swfile);
				}
			}
		} else if (*argv == NULL)
			FUNC11();
		for (; *argv; ++argv) {
			swfile = FUNC9(*argv, 0, NULL);
			if (swfile == NULL) {
				ret = 1;
				continue;
			}
			if (orig_prog == SWAPCTL) {
				FUNC4("%s: %sing %s as swap device\n",
				    FUNC3(),
				    (which_prog == SWAPOFF) ? "remov" : "add",
				    swfile);
			}
		}
	} else {
		if (lflag || sflag)
			FUNC10(lflag, sflag, hflag);
		else 
			FUNC11();
	}
	FUNC0(ret);
}