#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct statfs {char* f_mntonname; int f_flags; } ;
struct iovec {int dummy; } ;
typedef  int /*<<< orphan*/  errmsg ;
struct TYPE_8__ {int fs_flags; int fs_maxbpg; unsigned int fs_avgfilesize; scalar_t__ fs_clean; int fs_metaspace; int fs_fpg; int fs_minfree; size_t fs_optim; unsigned int fs_avgfpdir; scalar_t__ fs_sujfree; int /*<<< orphan*/  fs_volname; } ;
struct TYPE_7__ {char const* d_name; char* d_error; } ;

/* Variables and functions */
 int FS_ACLS ; 
 int FS_DOSOFTDEP ; 
 int FS_GJOURNAL ; 
 int FS_MULTILABEL ; 
 int FS_NFS4ACLS ; 
 size_t FS_OPTSPACE ; 
 size_t FS_OPTTIME ; 
 int FS_SUJ ; 
 int FS_TRIM ; 
 int /*<<< orphan*/  MAXVOLLEN ; 
 int MINFREE ; 
 int MNT_RELOAD ; 
 int MNT_UPDATE ; 
 int /*<<< orphan*/  OPTWARN ; 
 int SUJ_MIN ; 
 int FUNC0 (char*) ; 
 int FUNC1 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iovec**,int*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iovec**,int*,char*,char*,...) ; 
 TYPE_1__ disk ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (struct iovec*,int,int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC12 () ; 
 TYPE_4__ sblock ; 
 int FUNC13 (TYPE_1__*,int) ; 
 scalar_t__ FUNC14 (char const*,struct statfs*) ; 
 scalar_t__ FUNC15 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int FUNC19 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 

int
FUNC23(int argc, char *argv[])
{
	const char *avalue, *jvalue, *Jvalue, *Lvalue, *lvalue, *Nvalue, *nvalue;
	const char *tvalue;
	const char *special, *on;
	const char *name;
	int active;
	int Aflag, aflag, eflag, evalue, fflag, fvalue, jflag, Jflag, kflag;
	int kvalue, Lflag, lflag, mflag, mvalue, Nflag, nflag, oflag, ovalue;
	int pflag, sflag, svalue, Svalue, tflag;
	int ch, found_arg, i;
	int iovlen = 0;
	const char *chg[2];
	struct statfs stfs;
	struct iovec *iov = NULL;
	char errmsg[255] = {0};

	if (argc < 3)
		FUNC20();
	Aflag = aflag = eflag = fflag = jflag = Jflag = kflag = Lflag = 0;
	lflag = mflag = Nflag = nflag = oflag = pflag = sflag = tflag = 0;
	avalue = jvalue = Jvalue = Lvalue = lvalue = Nvalue = nvalue = NULL;
	evalue = fvalue = mvalue = ovalue = svalue = Svalue = 0;
	active = 0;
	found_arg = 0;		/* At least one arg is required. */
	while ((ch = FUNC7(argc, argv, "Aa:e:f:j:J:k:L:l:m:N:n:o:ps:S:t:"))
	    != -1)
		switch (ch) {

		case 'A':
			found_arg = 1;
			Aflag++;
			break;

		case 'a':
			found_arg = 1;
			name = "POSIX.1e ACLs";
			avalue = optarg;
			if (FUNC15(avalue, "enable") &&
			    FUNC15(avalue, "disable")) {
				FUNC5(10, "bad %s (options are %s)",
				    name, "`enable' or `disable'");
			}
			aflag = 1;
			break;

		case 'e':
			found_arg = 1;
			name = "maximum blocks per file in a cylinder group";
			evalue = FUNC0(optarg);
			if (evalue < 1)
				FUNC5(10, "%s must be >= 1 (was %s)",
				    name, optarg);
			eflag = 1;
			break;

		case 'f':
			found_arg = 1;
			name = "average file size";
			fvalue = FUNC0(optarg);
			if (fvalue < 1)
				FUNC5(10, "%s must be >= 1 (was %s)",
				    name, optarg);
			fflag = 1;
			break;

		case 'j':
			found_arg = 1;
			name = "softdep journaled file system";
			jvalue = optarg;
			if (FUNC15(jvalue, "enable") &&
			    FUNC15(jvalue, "disable")) {
				FUNC5(10, "bad %s (options are %s)",
				    name, "`enable' or `disable'");
			}
			jflag = 1;
			break;

		case 'J':
			found_arg = 1;
			name = "gjournaled file system";
			Jvalue = optarg;
			if (FUNC15(Jvalue, "enable") &&
			    FUNC15(Jvalue, "disable")) {
				FUNC5(10, "bad %s (options are %s)",
				    name, "`enable' or `disable'");
			}
			Jflag = 1;
			break;

		case 'k':
			found_arg = 1;
			name = "space to hold for metadata blocks";
			kvalue = FUNC0(optarg);
			if (kvalue < 0)
				FUNC5(10, "bad %s (%s)", name, optarg);
			kflag = 1;
			break;

		case 'L':
			found_arg = 1;
			name = "volume label";
			Lvalue = optarg;
			i = -1;
			while (FUNC8(Lvalue[++i]) || Lvalue[i] == '_' ||
			    Lvalue[i] == '-')
				;
			if (Lvalue[i] != '\0') {
				FUNC5(10, "bad %s. Valid characters are "
				    "alphanumerics, dashes, and underscores.",
				    name);
			}
			if (FUNC16(Lvalue) >= MAXVOLLEN) {
				FUNC5(10, "bad %s. Length is longer than %d.",
				    name, MAXVOLLEN - 1);
			}
			Lflag = 1;
			break;

		case 'l':
			found_arg = 1;
			name = "multilabel MAC file system";
			lvalue = optarg;
			if (FUNC15(lvalue, "enable") &&
			    FUNC15(lvalue, "disable")) {
				FUNC5(10, "bad %s (options are %s)",
				    name, "`enable' or `disable'");
			}
			lflag = 1;
			break;

		case 'm':
			found_arg = 1;
			name = "minimum percentage of free space";
			mvalue = FUNC0(optarg);
			if (mvalue < 0 || mvalue > 99)
				FUNC5(10, "bad %s (%s)", name, optarg);
			mflag = 1;
			break;

		case 'N':
			found_arg = 1;
			name = "NFSv4 ACLs";
			Nvalue = optarg;
			if (FUNC15(Nvalue, "enable") &&
			    FUNC15(Nvalue, "disable")) {
				FUNC5(10, "bad %s (options are %s)",
				    name, "`enable' or `disable'");
			}
			Nflag = 1;
			break;

		case 'n':
			found_arg = 1;
			name = "soft updates";
			nvalue = optarg;
			if (FUNC15(nvalue, "enable") != 0 &&
			    FUNC15(nvalue, "disable") != 0) {
				FUNC5(10, "bad %s (options are %s)",
				    name, "`enable' or `disable'");
			}
			nflag = 1;
			break;

		case 'o':
			found_arg = 1;
			name = "optimization preference";
			if (FUNC15(optarg, "space") == 0)
				ovalue = FS_OPTSPACE;
			else if (FUNC15(optarg, "time") == 0)
				ovalue = FS_OPTTIME;
			else
				FUNC5(10,
				    "bad %s (options are `space' or `time')",
				    name);
			oflag = 1;
			break;

		case 'p':
			found_arg = 1;
			pflag = 1;
			break;

		case 's':
			found_arg = 1;
			name = "expected number of files per directory";
			svalue = FUNC0(optarg);
			if (svalue < 1)
				FUNC5(10, "%s must be >= 1 (was %s)",
				    name, optarg);
			sflag = 1;
			break;

		case 'S':
			found_arg = 1;
			name = "Softdep Journal Size";
			Svalue = FUNC0(optarg);
			if (Svalue < SUJ_MIN)
				FUNC5(10, "%s must be >= %d (was %s)",
				    name, SUJ_MIN, optarg);
			break;

		case 't':
			found_arg = 1;
			name = "trim";
			tvalue = optarg;
			if (FUNC15(tvalue, "enable") != 0 &&
			    FUNC15(tvalue, "disable") != 0) {
				FUNC5(10, "bad %s (options are %s)",
				    name, "`enable' or `disable'");
			}
			tflag = 1;
			break;

		default:
			FUNC20();
		}
	argc -= optind;
	argv += optind;
	if (found_arg == 0 || argc != 1)
		FUNC20();

	on = special = argv[0];
	if (FUNC19(&disk, special) == -1)
		goto err;
	if (disk.d_name != special) {
		if (FUNC14(special, &stfs) != 0)
			FUNC21("Can't stat %s", special);
		if (FUNC15(special, stfs.f_mntonname) == 0)
			active = 1;
	}

	if (pflag) {
		FUNC12();
		FUNC6(0);
	}
	if (Lflag) {
		name = "volume label";
		FUNC17(sblock.fs_volname, Lvalue, MAXVOLLEN);
	}
	if (aflag) {
		name = "POSIX.1e ACLs";
		if (FUNC15(avalue, "enable") == 0) {
			if (sblock.fs_flags & FS_ACLS) {
				FUNC22("%s remains unchanged as enabled", name);
			} else if (sblock.fs_flags & FS_NFS4ACLS) {
				FUNC22("%s and NFSv4 ACLs are mutually "
				    "exclusive", name);
			} else {
				sblock.fs_flags |= FS_ACLS;
				FUNC22("%s set", name);
			}
		} else if (FUNC15(avalue, "disable") == 0) {
			if ((~sblock.fs_flags & FS_ACLS) ==
			    FS_ACLS) {
				FUNC22("%s remains unchanged as disabled",
				    name);
			} else {
				sblock.fs_flags &= ~FS_ACLS;
				FUNC22("%s cleared", name);
			}
		}
	}
	if (eflag) {
		name = "maximum blocks per file in a cylinder group";
		if (sblock.fs_maxbpg == evalue)
			FUNC22("%s remains unchanged as %d", name, evalue);
		else {
			FUNC22("%s changes from %d to %d",
			    name, sblock.fs_maxbpg, evalue);
			sblock.fs_maxbpg = evalue;
		}
	}
	if (fflag) {
		name = "average file size";
		if (sblock.fs_avgfilesize == (unsigned)fvalue) {
			FUNC22("%s remains unchanged as %d", name, fvalue);
		}
		else {
			FUNC22("%s changes from %d to %d",
					name, sblock.fs_avgfilesize, fvalue);
			sblock.fs_avgfilesize = fvalue;
		}
	}
	if (jflag) {
 		name = "soft updates journaling";
 		if (FUNC15(jvalue, "enable") == 0) {
			if ((sblock.fs_flags & (FS_DOSOFTDEP | FS_SUJ)) ==
			    (FS_DOSOFTDEP | FS_SUJ)) {
				FUNC22("%s remains unchanged as enabled", name);
			} else if (sblock.fs_clean == 0) {
				FUNC22("%s cannot be enabled until fsck is run",
				    name);
			} else if (FUNC9(Svalue) != 0) {
				FUNC22("%s cannot be enabled", name);
			} else {
 				sblock.fs_flags |= FS_DOSOFTDEP | FS_SUJ;
 				FUNC22("%s set", name);
			}
 		} else if (FUNC15(jvalue, "disable") == 0) {
			if ((~sblock.fs_flags & FS_SUJ) == FS_SUJ) {
				FUNC22("%s remains unchanged as disabled", name);
			} else {
				FUNC10();
 				sblock.fs_flags &= ~FS_SUJ;
				sblock.fs_sujfree = 0;
 				FUNC22("%s cleared but soft updates still set.",
				    name);

				FUNC22("remove .sujournal to reclaim space");
			}
 		}
	}
	if (Jflag) {
		name = "gjournal";
		if (FUNC15(Jvalue, "enable") == 0) {
			if (sblock.fs_flags & FS_GJOURNAL) {
				FUNC22("%s remains unchanged as enabled", name);
			} else {
				sblock.fs_flags |= FS_GJOURNAL;
				FUNC22("%s set", name);
			}
		} else if (FUNC15(Jvalue, "disable") == 0) {
			if ((~sblock.fs_flags & FS_GJOURNAL) ==
			    FS_GJOURNAL) {
				FUNC22("%s remains unchanged as disabled",
				    name);
			} else {
				sblock.fs_flags &= ~FS_GJOURNAL;
				FUNC22("%s cleared", name);
			}
		}
	}
	if (kflag) {
		name = "space to hold for metadata blocks";
		if (sblock.fs_metaspace == kvalue)
			FUNC22("%s remains unchanged as %d", name, kvalue);
		else {
			kvalue = FUNC1(&sblock, kvalue);
			if (kvalue > sblock.fs_fpg / 2) {
				kvalue = FUNC1(&sblock, sblock.fs_fpg / 2);
				FUNC22("%s cannot exceed half the file system "
				    "space", name);
			}
			FUNC22("%s changes from %jd to %d",
				    name, sblock.fs_metaspace, kvalue);
			sblock.fs_metaspace = kvalue;
		}
	}
	if (lflag) {
		name = "multilabel";
		if (FUNC15(lvalue, "enable") == 0) {
			if (sblock.fs_flags & FS_MULTILABEL) {
				FUNC22("%s remains unchanged as enabled", name);
			} else {
				sblock.fs_flags |= FS_MULTILABEL;
				FUNC22("%s set", name);
			}
		} else if (FUNC15(lvalue, "disable") == 0) {
			if ((~sblock.fs_flags & FS_MULTILABEL) ==
			    FS_MULTILABEL) {
				FUNC22("%s remains unchanged as disabled",
				    name);
			} else {
				sblock.fs_flags &= ~FS_MULTILABEL;
				FUNC22("%s cleared", name);
			}
		}
	}
	if (mflag) {
		name = "minimum percentage of free space";
		if (sblock.fs_minfree == mvalue)
			FUNC22("%s remains unchanged as %d%%", name, mvalue);
		else {
			FUNC22("%s changes from %d%% to %d%%",
				    name, sblock.fs_minfree, mvalue);
			sblock.fs_minfree = mvalue;
			if (mvalue >= MINFREE && sblock.fs_optim == FS_OPTSPACE)
				FUNC22(OPTWARN, "time", ">=", MINFREE);
			if (mvalue < MINFREE && sblock.fs_optim == FS_OPTTIME)
				FUNC22(OPTWARN, "space", "<", MINFREE);
		}
	}
	if (Nflag) {
		name = "NFSv4 ACLs";
		if (FUNC15(Nvalue, "enable") == 0) {
			if (sblock.fs_flags & FS_NFS4ACLS) {
				FUNC22("%s remains unchanged as enabled", name);
			} else if (sblock.fs_flags & FS_ACLS) {
				FUNC22("%s and POSIX.1e ACLs are mutually "
				    "exclusive", name);
			} else {
				sblock.fs_flags |= FS_NFS4ACLS;
				FUNC22("%s set", name);
			}
		} else if (FUNC15(Nvalue, "disable") == 0) {
			if ((~sblock.fs_flags & FS_NFS4ACLS) ==
			    FS_NFS4ACLS) {
				FUNC22("%s remains unchanged as disabled",
				    name);
			} else {
				sblock.fs_flags &= ~FS_NFS4ACLS;
				FUNC22("%s cleared", name);
			}
		}
	}
	if (nflag) {
 		name = "soft updates";
 		if (FUNC15(nvalue, "enable") == 0) {
			if (sblock.fs_flags & FS_DOSOFTDEP)
				FUNC22("%s remains unchanged as enabled", name);
			else if (sblock.fs_clean == 0) {
				FUNC22("%s cannot be enabled until fsck is run",
				    name);
			} else {
 				sblock.fs_flags |= FS_DOSOFTDEP;
 				FUNC22("%s set", name);
			}
 		} else if (FUNC15(nvalue, "disable") == 0) {
			if ((~sblock.fs_flags & FS_DOSOFTDEP) == FS_DOSOFTDEP)
				FUNC22("%s remains unchanged as disabled", name);
			else {
 				sblock.fs_flags &= ~FS_DOSOFTDEP;
 				FUNC22("%s cleared", name);
			}
 		}
	}
	if (oflag) {
		name = "optimization preference";
		chg[FS_OPTSPACE] = "space";
		chg[FS_OPTTIME] = "time";
		if (sblock.fs_optim == ovalue)
			FUNC22("%s remains unchanged as %s", name, chg[ovalue]);
		else {
			FUNC22("%s changes from %s to %s",
				    name, chg[sblock.fs_optim], chg[ovalue]);
			sblock.fs_optim = ovalue;
			if (sblock.fs_minfree >= MINFREE &&
			    ovalue == FS_OPTSPACE)
				FUNC22(OPTWARN, "time", ">=", MINFREE);
			if (sblock.fs_minfree < MINFREE && ovalue == FS_OPTTIME)
				FUNC22(OPTWARN, "space", "<", MINFREE);
		}
	}
	if (sflag) {
		name = "expected number of files per directory";
		if (sblock.fs_avgfpdir == (unsigned)svalue) {
			FUNC22("%s remains unchanged as %d", name, svalue);
		}
		else {
			FUNC22("%s changes from %d to %d",
					name, sblock.fs_avgfpdir, svalue);
			sblock.fs_avgfpdir = svalue;
		}
	}
	if (tflag) {
		name = "issue TRIM to the disk";
 		if (FUNC15(tvalue, "enable") == 0) {
			if (sblock.fs_flags & FS_TRIM)
				FUNC22("%s remains unchanged as enabled", name);
			else {
 				sblock.fs_flags |= FS_TRIM;
 				FUNC22("%s set", name);
			}
 		} else if (FUNC15(tvalue, "disable") == 0) {
			if ((~sblock.fs_flags & FS_TRIM) == FS_TRIM)
				FUNC22("%s remains unchanged as disabled", name);
			else {
 				sblock.fs_flags &= ~FS_TRIM;
 				FUNC22("%s cleared", name);
			}
 		}
	}

	if (FUNC13(&disk, Aflag) == -1)
		goto err;
	FUNC18(&disk);
	if (active) {
		FUNC3(&iov, &iovlen, "fstype", "ufs");
		FUNC3(&iov, &iovlen, "fspath", "%s", on);
		FUNC2(&iov, &iovlen, "errmsg", errmsg, sizeof(errmsg));
		if (FUNC11(iov, iovlen,
		    stfs.f_flags | MNT_UPDATE | MNT_RELOAD) < 0) {
			if (errmsg[0])
				FUNC4(9, "%s: reload: %s", special, errmsg);
			else
				FUNC4(9, "%s: reload", special);
		}
		FUNC22("file system reloaded");
	}
	FUNC6(0);
err:
	if (disk.d_error != NULL)
		FUNC5(11, "%s: %s", special, disk.d_error);
	else
		FUNC4(12, "%s", special);
}