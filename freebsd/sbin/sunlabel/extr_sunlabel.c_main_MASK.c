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
struct sun_disklabel {int sdkp_nsectors; int sl_ncylinders; int sl_ntracks; int sl_nsectors; scalar_t__ sl_magic; struct sun_disklabel* sl_part; scalar_t__ sdkp_cyloffset; } ;
typedef  int /*<<< orphan*/  sl ;

/* Variables and functions */
 int Bflag ; 
 int Rflag ; 
 scalar_t__ SUN_DKMAGIC ; 
 size_t SUN_RAWPART ; 
 char* _PATH_BOOT ; 
 int /*<<< orphan*/  _PATH_DEV ; 
 int bflag ; 
 int /*<<< orphan*/  FUNC0 (struct sun_disklabel*,int) ; 
 int cflag ; 
 int /*<<< orphan*/  FUNC1 (struct sun_disklabel*,char const*,char const*) ; 
 int eflag ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int,char**,char*) ; 
 int hflag ; 
 int nflag ; 
 char* optarg ; 
 scalar_t__ optind ; 
 scalar_t__ FUNC5 (struct sun_disklabel*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct sun_disklabel*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sun_disklabel*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int wflag ; 
 int /*<<< orphan*/  FUNC10 (struct sun_disklabel*,char const*,char const*) ; 

int
FUNC11(int ac, char **av)
{
	struct sun_disklabel sl;
	const char *bootpath;
	const char *proto;
	const char *disk;
	int ch;

	bootpath = _PATH_BOOT; 
	while ((ch = FUNC4(ac, av, "b:BcehnrRw")) != -1)
		switch (ch) {
		case 'b':
			bflag = 1;
			bootpath = optarg;
			break;
		case 'B':
			Bflag = 1;
			break;
		case 'c':
			cflag = 1;
			break;
		case 'e':
			eflag = 1;
			break;
		case 'h':
			hflag = 1;
			break;
		case 'n':
			nflag = 1;
			break;
		case 'r':
			FUNC3(stderr, "Obsolete -r flag ignored\n");
			break;
		case 'R':
			Rflag = 1;
			break;
		case 'w':
			wflag = 1;
			break;
		default:
			FUNC9();
			break;
		}
	if (bflag && !Bflag)
		FUNC9();
	if (nflag && !(Bflag || eflag || Rflag || wflag))
		FUNC9();
	if (eflag && (Rflag || wflag))
		FUNC9();
	if (eflag)
		hflag = 0;
	ac -= optind;
	av += optind;
	if (ac == 0)
		FUNC9();
	FUNC0(&sl, sizeof(sl));
	disk = av[0];
	if (wflag) {
		if (ac != 2 || FUNC8(av[1], "auto") != 0)
			FUNC9();
		FUNC7(&sl, disk);
		FUNC0(sl.sl_part, sizeof(sl.sl_part));
		sl.sl_part[SUN_RAWPART].sdkp_cyloffset = 0;
		sl.sl_part[SUN_RAWPART].sdkp_nsectors = sl.sl_ncylinders *
		    sl.sl_ntracks * sl.sl_nsectors;
		FUNC10(&sl, disk, bootpath);
	} else if (eflag) {
		if (ac != 1)
			FUNC9();
		FUNC7(&sl, disk);
		if (sl.sl_magic != SUN_DKMAGIC)
			FUNC2(1, "%s%s has no sun disklabel", _PATH_DEV, disk);
		FUNC1(&sl, disk, bootpath);
	} else if (Rflag) {
		if (ac != 2)
			FUNC9();
		proto = av[1];
		FUNC7(&sl, disk);
		if (FUNC5(&sl, proto) != 0)
			FUNC2(1, "%s: invalid label", proto);
		FUNC10(&sl, disk, bootpath);
	} else if (Bflag) {
		FUNC7(&sl, disk);
		if (sl.sl_magic != SUN_DKMAGIC)
			FUNC2(1, "%s%s has no sun disklabel", _PATH_DEV, disk);
		FUNC10(&sl, disk, bootpath);
	} else {
		FUNC7(&sl, disk);
		if (sl.sl_magic != SUN_DKMAGIC)
			FUNC2(1, "%s%s has no sun disklabel", _PATH_DEV, disk);
		FUNC6(&sl, disk, stdout);
	}
	return (0);
}