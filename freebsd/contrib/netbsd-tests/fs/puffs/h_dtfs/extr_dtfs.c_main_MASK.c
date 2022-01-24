#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct puffs_usermount {int dummy; } ;
struct puffs_pathobj {char* po_path; int /*<<< orphan*/  po_len; } ;
struct puffs_ops {int dummy; } ;
struct dtfs_fid {int dummy; } ;
typedef  int /*<<< orphan*/ * mntoptparse_t ;
struct TYPE_3__ {int dtm_allowprot; } ;

/* Variables and functions */
 char* FSNAME ; 
 int MAXREQMAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct puffs_ops*) ; 
 int /*<<< orphan*/  FUNC1 (struct puffs_ops*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct puffs_ops*,int /*<<< orphan*/ ) ; 
 int PUFFS_FHFLAG_DYNAMIC ; 
 int PUFFS_FHFLAG_NFSV2 ; 
 int PUFFS_FHFLAG_NFSV3 ; 
 int PUFFS_FLAG_BUILDPATH ; 
 int PUFFS_FLAG_OPDUMP ; 
 int PUFFS_KFLAG_IAONDEMAND ; 
 int PUFFS_KFLAG_LOOKUP_FULLPNBUF ; 
 int PUFFS_KFLAG_WTCACHE ; 
 int /*<<< orphan*/  SIGALRM ; 
 scalar_t__ SIG_ERR ; 
 int VM_PROT_ALL ; 
 int /*<<< orphan*/  _PATH_PUFFS ; 
 int /*<<< orphan*/  access ; 
 void* FUNC3 (char*) ; 
 int /*<<< orphan*/  create ; 
 int /*<<< orphan*/  dtfs ; 
 scalar_t__ FUNC4 (struct puffs_usermount*,char*) ; 
 int dynamicfh ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  fhtonode ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fs ; 
 TYPE_1__ gdtm ; 
 int /*<<< orphan*/  getattr ; 
 int /*<<< orphan*/ * FUNC8 (char*,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC9 (int,char**,char*) ; 
 struct puffs_usermount* gpu ; 
 int /*<<< orphan*/  inactive ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  lookup ; 
 int /*<<< orphan*/  loopfun ; 
 int /*<<< orphan*/  mkdir ; 
 int /*<<< orphan*/  mknod ; 
 int /*<<< orphan*/  mmap ; 
 int /*<<< orphan*/  node ; 
 int /*<<< orphan*/  nodetofh ; 
 int /*<<< orphan*/  pathconf ; 
 int /*<<< orphan*/  poll ; 
 int FUNC10 (struct puffs_usermount*,int,int) ; 
 int /*<<< orphan*/  puffs_genfs ; 
 int /*<<< orphan*/  FUNC11 (struct puffs_usermount*) ; 
 struct puffs_pathobj* FUNC12 (struct puffs_usermount*) ; 
 struct puffs_usermount* FUNC13 (struct puffs_ops*,int /*<<< orphan*/ ,char const*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  puffs_kernerr_abort ; 
 int FUNC14 (struct puffs_usermount*) ; 
 int /*<<< orphan*/  FUNC15 (struct puffs_usermount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct puffs_usermount*,struct timespec*) ; 
 int FUNC17 (struct puffs_usermount*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct puffs_usermount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct puffs_usermount*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct puffs_usermount*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct puffs_usermount*,int) ; 
 int /*<<< orphan*/  puffsmopts ; 
 int /*<<< orphan*/  read ; 
 int /*<<< orphan*/  readdir ; 
 int /*<<< orphan*/  readlink ; 
 int /*<<< orphan*/  reclaim ; 
 int /*<<< orphan*/  remove ; 
 int /*<<< orphan*/  rename ; 
 int /*<<< orphan*/  rmdir ; 
 int /*<<< orphan*/  setattr ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  statvfs ; 
 int straightflush ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  symlink ; 
 int /*<<< orphan*/  sync ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unmount ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 int /*<<< orphan*/  wipe_the_sleep_out_of_my_eyes ; 
 int /*<<< orphan*/  write ; 

int
FUNC29(int argc, char *argv[])
{
	extern char *optarg;
	extern int optind;
	struct puffs_usermount *pu;
	struct puffs_pathobj *po_root;
	struct puffs_ops *pops;
	struct timespec ts;
	const char *typename;
	char *rtstr;
	mntoptparse_t mp;
	int pflags, detach, mntflags;
	int ch;
	int khashbuckets;
	int maxreqsize;

	FUNC22(argv[0]);

	rtstr = NULL;
	detach = 1;
	mntflags = 0;
	khashbuckets = 256;
	pflags = PUFFS_KFLAG_IAONDEMAND;
	typename = FSNAME;
	maxreqsize = MAXREQMAGIC;
	gdtm.dtm_allowprot = VM_PROT_ALL;
	while ((ch = FUNC9(argc, argv, "bc:dfilm:n:o:p:r:st")) != -1) {
		switch (ch) {
		case 'b': /* build paths, for debugging the feature */
			pflags |= PUFFS_FLAG_BUILDPATH;
			break;
		case 'c':
			khashbuckets = FUNC3(optarg);
			break;
		case 'd':
			dynamicfh = 1;
			break;
		case 'f':
			pflags |= PUFFS_KFLAG_LOOKUP_FULLPNBUF;
			break;
		case 'i':
			pflags &= ~PUFFS_KFLAG_IAONDEMAND;
			break;
		case 'l':
			straightflush = 1;
			break;
		case 'm':
			maxreqsize = FUNC3(optarg);
			break;
		case 'n':
			typename = optarg;
			break;
		case 'o':
			mp = FUNC8(optarg, puffsmopts, &mntflags, &pflags);
			if (mp == NULL)
				FUNC5(1, "getmntopts");
			FUNC7(mp);
			break;
		case 'p':
			gdtm.dtm_allowprot = FUNC3(optarg);
			if ((gdtm.dtm_allowprot | VM_PROT_ALL) != VM_PROT_ALL)
				FUNC27();
			break;
		case 'r':
			rtstr = optarg;
			break;
		case 's': /* stay on top */
			detach = 0;
			break;
		case 't':
			pflags |= PUFFS_KFLAG_WTCACHE;
			break;
		default:
			FUNC27();
			/*NOTREACHED*/
		}
	}
	if (pflags & PUFFS_FLAG_OPDUMP)
		detach = 0;
	argc -= optind;
	argv += optind;

	if (argc != 2)
		FUNC27();

	FUNC0(pops);

	FUNC1(pops, dtfs, fs, statvfs);
	FUNC1(pops, dtfs, fs, unmount);
	FUNC2(pops, sync);
	FUNC1(pops, dtfs, fs, fhtonode);
	FUNC1(pops, dtfs, fs, nodetofh);

	FUNC1(pops, dtfs, node, lookup);
	FUNC1(pops, dtfs, node, access);
	FUNC1(pops, puffs_genfs, node, getattr);
	FUNC1(pops, dtfs, node, setattr);
	FUNC1(pops, dtfs, node, create);
	FUNC1(pops, dtfs, node, remove);
	FUNC1(pops, dtfs, node, readdir);
	FUNC1(pops, dtfs, node, poll);
	FUNC1(pops, dtfs, node, mmap);
	FUNC1(pops, dtfs, node, mkdir);
	FUNC1(pops, dtfs, node, rmdir);
	FUNC1(pops, dtfs, node, rename);
	FUNC1(pops, dtfs, node, read);
	FUNC1(pops, dtfs, node, write);
	FUNC1(pops, dtfs, node, link);
	FUNC1(pops, dtfs, node, symlink);
	FUNC1(pops, dtfs, node, readlink);
	FUNC1(pops, dtfs, node, mknod);
	FUNC1(pops, dtfs, node, inactive);
	FUNC1(pops, dtfs, node, pathconf);
	FUNC1(pops, dtfs, node, reclaim);

	FUNC24(FUNC26(NULL)); /* for random generation numbers */

	pu = FUNC13(pops, _PATH_PUFFS, typename, &gdtm, pflags);
	if (pu == NULL)
		FUNC5(1, "init");
	gpu = pu;

	FUNC19(pu, sizeof(struct dtfs_fid),
	    PUFFS_FHFLAG_NFSV2 | PUFFS_FHFLAG_NFSV3
	    | (dynamicfh ? PUFFS_FHFLAG_DYNAMIC : 0));
	FUNC21(pu, khashbuckets);

	if (FUNC23(SIGALRM, wipe_the_sleep_out_of_my_eyes) == SIG_ERR)
		FUNC28("cannot set alarm sighandler");

	/* init */
	if (FUNC4(pu, rtstr) != 0)
		FUNC6(1, "dtfs_domount failed");

	po_root = FUNC12(pu);
	po_root->po_path = argv[0];
	po_root->po_len = FUNC25(argv[0]);

	/* often enough for testing poll */
	ts.tv_sec = 1;
	ts.tv_nsec = 0;
	FUNC15(pu, loopfun);
	FUNC16(pu, &ts);

	if (maxreqsize != MAXREQMAGIC)
		FUNC20(pu, maxreqsize);

	FUNC18(pu, puffs_kernerr_abort);
	if (detach)
		if (FUNC10(pu, 1, 1) == -1)
			FUNC5(1, "puffs_daemon");

	if (FUNC17(pu,  argv[1], mntflags, FUNC11(pu)) == -1)
		FUNC5(1, "mount");
	if (FUNC14(pu) == -1)
		FUNC5(1, "mainloop");

	return 0;
}