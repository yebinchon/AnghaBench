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
struct mtpt_info {int mi_mode; int mi_have_mode; int mi_forced_pw; } ;
typedef  int /*<<< orphan*/  mi ;
typedef  scalar_t__ intmax_t ;
typedef  enum md_types { ____Placeholder_md_types } md_types ;

/* Variables and functions */
 int MD_MALLOC ; 
 char* MD_NAME ; 
 int MD_SWAP ; 
 int MD_VNODE ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IRWXU ; 
 unsigned long ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,...) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,struct mtpt_info*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (void*,struct mtpt_info*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int FUNC12 (void*,int) ; 
 int FUNC13 (int,char**,char*) ; 
 char const* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char const) ; 
 int FUNC16 (char*) ; 
 int loudsubs ; 
 char* mdname ; 
 int mdnamelen ; 
 char const* mdsuffix ; 
 int /*<<< orphan*/  FUNC17 (struct mtpt_info*,char,int) ; 
 int FUNC18 (char*) ; 
 int norun ; 
 void* optarg ; 
 scalar_t__ optind ; 
 void* path_mdconfig ; 
 void* FUNC19 (void*) ; 
 scalar_t__ FUNC20 (char const*,char*) ; 
 char* FUNC21 (char*) ; 
 int FUNC22 (char*) ; 
 scalar_t__ FUNC23 (char const*,char*,int) ; 
 unsigned long FUNC24 (char const*,char**,int) ; 
 scalar_t__ FUNC25 (char const*,char**,int /*<<< orphan*/ ) ; 
 int unit ; 
 int /*<<< orphan*/  FUNC26 () ; 

int
FUNC27(int argc, char **argv)
{
	struct mtpt_info mi;		/* Mountpoint info. */
	intmax_t mdsize;
	char *mdconfig_arg, *newfs_arg,	/* Args to helper programs. */
	    *mount_arg;
	enum md_types mdtype;		/* The type of our memory disk. */
	bool have_mdtype, mlmac;
	bool detach, softdep, autounit, newfs;
	const char *mtpoint, *size_arg, *skel, *unitstr;
	char *p;
	int ch, idx;
	void *set;
	unsigned long ul;

	/* Misc. initialization. */
	(void)FUNC17(&mi, '\0', sizeof(mi));
	detach = true;
	softdep = true;
	autounit = false;
	mlmac = false;
	newfs = true;
	have_mdtype = false;
	skel = NULL;
	mdtype = MD_SWAP;
	mdname = MD_NAME;
	mdnamelen = FUNC22(mdname);
	mdsize = 0;
	/*
	 * Can't set these to NULL.  They may be passed to the
	 * respective programs without modification.  I.e., we may not
	 * receive any command-line options which will caused them to
	 * be modified.
	 */
	mdconfig_arg = FUNC21("");
	newfs_arg = FUNC21("");
	mount_arg = FUNC21("");
	size_arg = NULL;

	/* If we were started as mount_mfs or mfs, imply -C. */
	if (FUNC20(FUNC14(), "mount_mfs") == 0 ||
	    FUNC20(FUNC14(), "mfs") == 0) {
		/* Make compatibility assumptions. */
		mi.mi_mode = 01777;
		mi.mi_have_mode = true;
	}

	while ((ch = FUNC13(argc, argv,
	    "a:b:Cc:Dd:E:e:F:f:hi:k:LlMm:NnO:o:Pp:Ss:tT:Uv:w:X")) != -1)
		switch (ch) {
		case 'a':
			FUNC0(&newfs_arg, "-a %s", optarg);
			break;
		case 'b':
			FUNC0(&newfs_arg, "-b %s", optarg);
			break;
		case 'C':
			/* Ignored for compatibility. */
			break;
		case 'c':
			FUNC0(&newfs_arg, "-c %s", optarg);
			break;
		case 'D':
			detach = false;
			break;
		case 'd':
			FUNC0(&newfs_arg, "-d %s", optarg);
			break;
		case 'E':
			path_mdconfig = optarg;
			break;
		case 'e':
			FUNC0(&newfs_arg, "-e %s", optarg);
			break;
		case 'F':
			if (have_mdtype)
				FUNC26();
			mdtype = MD_VNODE;
			have_mdtype = true;
			FUNC0(&mdconfig_arg, "-f %s", optarg);
			break;
		case 'f':
			FUNC0(&newfs_arg, "-f %s", optarg);
			break;
		case 'h':
			FUNC26();
			break;
		case 'i':
			FUNC0(&newfs_arg, "-i %s", optarg);
			break;
		case 'k':
			skel = optarg;
			break;
		case 'L':
			loudsubs = true;
			break;
		case 'l':
			mlmac = true;
			FUNC0(&newfs_arg, "-l");
			break;
		case 'M':
			if (have_mdtype)
				FUNC26();
			mdtype = MD_MALLOC;
			have_mdtype = true;
			FUNC0(&mdconfig_arg, "-o reserve");
			break;
		case 'm':
			FUNC0(&newfs_arg, "-m %s", optarg);
			break;
		case 'N':
			norun = true;
			break;
		case 'n':
			FUNC0(&newfs_arg, "-n");
			break;
		case 'O':
			FUNC0(&newfs_arg, "-o %s", optarg);
			break;
		case 'o':
			FUNC0(&mount_arg, "-o %s", optarg);
			break;
		case 'P':
			newfs = false;
			break;
		case 'p':
			if ((set = FUNC19(optarg)) == NULL)
				FUNC26();
			mi.mi_mode = FUNC12(set, S_IRWXU | S_IRWXG | S_IRWXO);
			mi.mi_have_mode = true;
			mi.mi_forced_pw = true;
			FUNC11(set);
			break;
		case 'S':
			softdep = false;
			break;
		case 's':
			size_arg = optarg;
			break;
		case 't':
			FUNC0(&newfs_arg, "-t");
			break;
		case 'T':
			FUNC0(&mount_arg, "-t %s", optarg);
			break;
		case 'U':
			softdep = true;
			break;
		case 'v':
			FUNC0(&newfs_arg, "-O %s", optarg);
			break;
		case 'w':
			FUNC10(optarg, &mi);
			mi.mi_forced_pw = true;
			break;
		case 'X':
			debug = true;
			break;
		default:
			FUNC26();
		}
	argc -= optind;
	argv += optind;
	if (argc < 2)
		FUNC26();

	/*
	 * Historically our size arg was passed directly to mdconfig, which
	 * treats a number without a suffix as a count of 512-byte sectors;
	 * tmpfs would treat it as a count of bytes.  To get predictable
	 * behavior for 'auto' we document that the size always uses mdconfig
	 * rules.  To make that work, decode the size here so it can be passed
	 * to either tmpfs or mdconfig as a count of bytes.
	 */
	if (size_arg != NULL) {
		mdsize = (intmax_t)FUNC25(size_arg, &p, 0);
		if (p == size_arg || (p[0] != 0 && p[1] != 0) || mdsize < 0)
			FUNC9(1, "invalid size '%s'", size_arg);
		switch (*p) {
		case 'p':
		case 'P':
			mdsize *= 1024;
		case 't':
		case 'T':
			mdsize *= 1024;
		case 'g':
		case 'G':
			mdsize *= 1024;
		case 'm':
		case 'M':
			mdsize *= 1024;
		case 'k':
		case 'K':
			mdsize *= 1024;
		case 'b':
		case 'B':
			break;
		case '\0':
			mdsize *= 512;
			break;
		default:
			FUNC9(1, "invalid size suffix on '%s'", size_arg);
		}
	}

	/*
	 * Based on the command line 'md-device' either mount a tmpfs filesystem
	 * or configure the md device then format and mount a filesystem on it.
	 * If the device is 'auto' use tmpfs if it is available and there is no
	 * request for multilabel MAC (which tmpfs does not support).
	 */
	unitstr = argv[0];
	mtpoint = argv[1];

	if (FUNC20(unitstr, "auto") == 0) {
		if (mlmac)
			idx = -1; /* Must use md for mlmac. */
		else if ((idx = FUNC18("tmpfs")) == -1)
			idx = FUNC16("tmpfs");
		if (idx == -1)
			unitstr = "md";
		else
			unitstr = "tmpfs";
	}

	if (FUNC20(unitstr, "tmpfs") == 0) {
		if (size_arg != NULL && mdsize != 0)
			FUNC0(&mount_arg, "-o size=%jd", mdsize);
		FUNC6(mount_arg, mtpoint); 
	} else {
		if (size_arg != NULL)
			FUNC0(&mdconfig_arg, "-s %jdB", mdsize);
		if (FUNC23(unitstr, "/dev/", 5) == 0)
			unitstr += 5;
		if (FUNC23(unitstr, mdname, mdnamelen) == 0)
			unitstr += mdnamelen;
		if (!FUNC15(*unitstr)) {
			autounit = true;
			unit = -1;
			mdsuffix = unitstr;
		} else {
			ul = FUNC24(unitstr, &p, 10);
			if (ul == ULONG_MAX)
				FUNC9(1, "bad device unit: %s", unitstr);
			unit = ul;
			mdsuffix = p;	/* can be empty */
		}
	
		if (!have_mdtype)
			mdtype = MD_SWAP;
		if (softdep)
			FUNC0(&newfs_arg, "-U");
		if (mdtype != MD_VNODE && !newfs)
			FUNC9(1, "-P requires a vnode-backed disk");
	
		/* Do the work. */
		if (detach && !autounit)
			FUNC4();
		if (autounit)
			FUNC3(mdconfig_arg, mdtype);
		else
			FUNC2(mdconfig_arg, mdtype);
		if (newfs)
			FUNC8(newfs_arg);
		FUNC5(mount_arg, mtpoint);
	}

	FUNC7(mtpoint, &mi);
	if (skel != NULL)
		FUNC1(mtpoint, skel);

	return (0);
}