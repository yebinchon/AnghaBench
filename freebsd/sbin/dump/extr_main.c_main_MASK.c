#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union dinode {int dummy; } dinode ;
typedef  int /*<<< orphan*/  time_t ;
struct stat {int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_mtime; } ;
struct fstab {char* fs_spec; char* fs_file; } ;
typedef  int intmax_t ;
typedef  int ino_t ;
struct TYPE_6__ {int fs_fsize; int fs_ipg; int fs_ncg; } ;
struct TYPE_5__ {scalar_t__ c_date; scalar_t__ c_ddate; char* c_dev; char* c_filesys; int c_level; int c_tapea; int c_volume; int /*<<< orphan*/  c_type; int /*<<< orphan*/  c_host; int /*<<< orphan*/  c_label; } ;

/* Variables and functions */
 int BUFSIZ ; 
 int CHAR_BIT ; 
 int DEV_BSIZE ; 
#define  ENOENT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 double HIGHDENSITYTREC ; 
 int IFDIR ; 
 int MNT_RDONLY ; 
 int NAMELEN ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGTRAP ; 
 scalar_t__ SIG_IGN ; 
 int /*<<< orphan*/  STDSB ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int TP_BSIZE ; 
 int /*<<< orphan*/  TS_CLRI ; 
 int /*<<< orphan*/  TS_END ; 
 int /*<<< orphan*/  TS_TAPE ; 
 int /*<<< orphan*/  X_FINOK ; 
 int /*<<< orphan*/  X_STARTUP ; 
 char* _PATH_DEFTAPE ; 
 int /*<<< orphan*/  _PATH_DTMP ; 
 char* _PATH_DUMPDATES ; 
 char* _PATH_MKSNAP_FFS ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int blocksperfile ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int cachesize ; 
 scalar_t__ FUNC6 (unsigned int,int) ; 
 int cartridge ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int density ; 
 int dev_bshift ; 
 int dev_bsize ; 
 char* disk ; 
 int /*<<< orphan*/  diskfd ; 
 int /*<<< orphan*/  FUNC8 () ; 
 char* dumpdates ; 
 char* dumpdirmap ; 
 int /*<<< orphan*/  FUNC9 (union dinode*,int) ; 
 char* dumpinomap ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int etapes ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC16 (TYPE_2__*,int) ; 
 struct fstab* FUNC17 (char*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 char* FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 union dinode* FUNC22 (int,int*) ; 
 char* FUNC23 (char*,int*) ; 
 int FUNC24 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 char* host ; 
 int FUNC26 (int,int) ; 
 scalar_t__ interrupt ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int /*<<< orphan*/  lastlevel ; 
 int level ; 
 int FUNC28 (int,int*) ; 
 int FUNC29 (int,int*) ; 
 int mapsize ; 
 int /*<<< orphan*/  FUNC30 (char*,...) ; 
 int /*<<< orphan*/  FUNC31 (char*,char*,...) ; 
 int nonodump ; 
 int notify ; 
 double ntrec ; 
 int FUNC32 (char*,long,long) ; 
 int /*<<< orphan*/  FUNC33 (int*,char***) ; 
 int /*<<< orphan*/  FUNC34 (char*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int passno ; 
 scalar_t__ pipeout ; 
 char* popenout ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 (char*,...) ; 
 char* FUNC37 (char*) ; 
 scalar_t__ FUNC38 (char*) ; 
 int FUNC39 (int,double) ; 
 int FUNC40 (int,int) ; 
 int rsync_friendly ; 
 int FUNC41 (int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ ) ; 
 TYPE_2__* sblock ; 
 int /*<<< orphan*/  FUNC42 (char*,char*) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ ) ; 
 scalar_t__ sig ; 
 scalar_t__ FUNC44 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ snapdump ; 
 int /*<<< orphan*/  FUNC45 (char*,int,char*,char*,...) ; 
 TYPE_1__ spcl ; 
 int /*<<< orphan*/  FUNC46 (int) ; 
 scalar_t__ FUNC47 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC48 (char*,char) ; 
 scalar_t__ FUNC49 (char*,char*) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC52 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC53 () ; 
 scalar_t__ FUNC54 (char*) ; 
 char* tape ; 
 int tapesize ; 
 int /*<<< orphan*/  temp ; 
 scalar_t__ tend_writing ; 
 int /*<<< orphan*/  FUNC55 (int /*<<< orphan*/ *) ; 
 int tp_bshift ; 
 int /*<<< orphan*/  FUNC56 () ; 
 double tsize ; 
 scalar_t__ tstart_writing ; 
 int uflag ; 
 scalar_t__ FUNC57 (char*) ; 
 int unlimited ; 
 int /*<<< orphan*/  FUNC58 (char*) ; 
 int /*<<< orphan*/  FUNC59 () ; 
 char* usedinomap ; 
 int /*<<< orphan*/  FUNC60 (char*) ; 
 int /*<<< orphan*/  FUNC61 (int) ; 

int
FUNC62(int argc, char *argv[])
{
	struct stat sb;
	ino_t ino;
	int dirty;
	union dinode *dp;
	struct fstab *dt;
	char *map, *mntpt;
	int ch, mode, mntflags;
	int i, ret, anydirskipped, bflag = 0, Tflag = 0, honorlevel = 1;
	int just_estimate = 0;
	ino_t maxino;
	char *tmsg;

	spcl.c_date = FUNC3(FUNC55(NULL));

	tsize = 0;	/* Default later, based on 'c' option for cart tapes */
	dumpdates = _PATH_DUMPDATES;
	popenout = NULL;
	tape = NULL;
	temp = _PATH_DTMP;
	if (TP_BSIZE / DEV_BSIZE == 0 || TP_BSIZE % DEV_BSIZE != 0)
		FUNC36("TP_BSIZE must be a multiple of DEV_BSIZE\n");
	level = 0;
	rsync_friendly = 0;

	if (argc < 2)
		FUNC59();

	FUNC33(&argc, &argv);
	while ((ch = FUNC24(argc, argv,
	    "0123456789aB:b:C:cD:d:f:h:LnP:RrSs:T:uWw")) != -1)
		switch (ch) {
		/* dump level */
		case '0': case '1': case '2': case '3': case '4':
		case '5': case '6': case '7': case '8': case '9':
			level = 10 * level + ch - '0';
			break;

		case 'a':		/* `auto-size', Write to EOM. */
			unlimited = 1;
			break;

		case 'B':		/* blocks per output file */
			blocksperfile = FUNC32("number of blocks per file",
			    1L, 0L);
			break;

		case 'b':		/* blocks per tape write */
			ntrec = FUNC32("number of blocks per write",
			    1L, 1000L);
			break;

		case 'C':
			cachesize = FUNC32("cachesize", 0, 0) * 1024 * 1024;
			break;

		case 'c':		/* Tape is cart. not 9-track */
			cartridge = 1;
			break;

		case 'D':
			dumpdates = optarg;
			break;

		case 'd':		/* density, in bits per inch */
			density = FUNC32("density", 10L, 327670L) / 10;
			if (density >= 625 && !bflag)
				ntrec = HIGHDENSITYTREC;
			break;

		case 'f':		/* output file */
			if (popenout != NULL)
				FUNC12(X_STARTUP, "You cannot use the P and f "
				    "flags together.\n");
			tape = optarg;
			break;

		case 'h':
			honorlevel = FUNC32("honor level", 0L, 10L);
			break;

		case 'L':
			snapdump = 1;
			break;

		case 'n':		/* notify operators */
			notify = 1;
			break;

		case 'P':
			if (tape != NULL)
				FUNC12(X_STARTUP, "You cannot use the P and f "
				    "flags together.\n");
			popenout = optarg;
			break;

		case 'r': /* store slightly less data to be friendly to rsync */
			if (rsync_friendly < 1)
				rsync_friendly = 1;
			break;

		case 'R': /* store even less data to be friendlier to rsync */
			if (rsync_friendly < 2)
				rsync_friendly = 2;
			break;

		case 'S':               /* exit after estimating # of tapes */
			just_estimate = 1;
			break;

		case 's':		/* tape size, feet */
			tsize = FUNC32("tape size", 1L, 0L) * 12 * 10;
			break;

		case 'T':		/* time of last dump */
			spcl.c_ddate = FUNC57(optarg);
			if (spcl.c_ddate < 0) {
				(void)FUNC15(stderr, "bad time \"%s\"\n",
				    optarg);
				FUNC13(X_STARTUP);
			}
			Tflag = 1;
			lastlevel = -1;
			break;

		case 'u':		/* update /etc/dumpdates */
			uflag = 1;
			break;

		case 'W':		/* what to do */
		case 'w':
			FUNC27(ch);
			FUNC13(X_FINOK);	/* do nothing else */

		default:
			FUNC59();
		}
	argc -= optind;
	argv += optind;

	if (argc < 1) {
		(void)FUNC15(stderr, "Must specify disk or file system\n");
		FUNC13(X_STARTUP);
	}
	disk = *argv++;
	argc--;
	if (argc >= 1) {
		(void)FUNC15(stderr, "Unknown arguments to dump:");
		while (argc--)
			(void)FUNC15(stderr, " %s", *argv++);
		(void)FUNC15(stderr, "\n");
		FUNC13(X_STARTUP);
	}
	if (rsync_friendly && (level > 0)) {
		(void)FUNC15(stderr, "%s %s\n", "rsync friendly options",
		    "can be used only with level 0 dumps.");
		FUNC13(X_STARTUP);
	}
	if (Tflag && uflag) {
	        (void)FUNC15(stderr,
		    "You cannot use the T and u flags together.\n");
		FUNC13(X_STARTUP);
	}
	if (popenout) {
		tape = "child pipeline process";
	} else if (tape == NULL && (tape = FUNC20("TAPE")) == NULL)
		tape = _PATH_DEFTAPE;
	if (FUNC49(tape, "-") == 0) {
		pipeout++;
		tape = "standard output";
	}

	if (blocksperfile)
		blocksperfile = FUNC39(blocksperfile, ntrec);
	else if (!unlimited) {
		/*
		 * Determine how to default tape size and density
		 *
		 *         	density				tape size
		 * 9-track	1600 bpi (160 bytes/.1")	2300 ft.
		 * 9-track	6250 bpi (625 bytes/.1")	2300 ft.
		 * cartridge	8000 bpi (100 bytes/.1")	1700 ft.
		 *						(450*4 - slop)
		 * hilit19 hits again: "
		 */
		if (density == 0)
			density = cartridge ? 100 : 160;
		if (tsize == 0)
			tsize = cartridge ? 1700L*120L : 2300L*120L;
	}

	if (FUNC48(tape, ':')) {
		host = tape;
		tape = FUNC48(host, ':');
		*tape++ = '\0';
#ifdef RDUMP
		if (strchr(tape, '\n')) {
		    (void)fprintf(stderr, "invalid characters in tape\n");
		    exit(X_STARTUP);
		}
		if (rmthost(host) == 0)
			exit(X_STARTUP);
#else
		(void)FUNC15(stderr, "remote dump not enabled\n");
		FUNC13(X_STARTUP);
#endif
	}
	(void)FUNC43(FUNC25()); /* rmthost() is the only reason to be setuid */

	if (FUNC44(SIGHUP, SIG_IGN) != SIG_IGN)
		FUNC44(SIGHUP, sig);
	if (FUNC44(SIGTRAP, SIG_IGN) != SIG_IGN)
		FUNC44(SIGTRAP, sig);
	if (FUNC44(SIGFPE, SIG_IGN) != SIG_IGN)
		FUNC44(SIGFPE, sig);
	if (FUNC44(SIGBUS, SIG_IGN) != SIG_IGN)
		FUNC44(SIGBUS, sig);
	if (FUNC44(SIGSEGV, SIG_IGN) != SIG_IGN)
		FUNC44(SIGSEGV, sig);
	if (FUNC44(SIGTERM, SIG_IGN) != SIG_IGN)
		FUNC44(SIGTERM, sig);
	if (FUNC44(SIGINT, interrupt) == SIG_IGN)
		FUNC44(SIGINT, SIG_IGN);

	FUNC8();	/* /etc/fstab snarfed */
	/*
	 *	disk can be either the full special file name,
	 *	the suffix of the special file name,
	 *	the special name missing the leading '/',
	 *	the file system name with or without the leading '/'.
	 */
	dt = FUNC17(disk);
	if (dt != NULL) {
		disk = FUNC37(dt->fs_spec);
 		if (disk == NULL)
 			FUNC12(X_STARTUP, "%s: unknown file system", dt->fs_spec);
		(void)FUNC52(spcl.c_dev, dt->fs_spec, NAMELEN);
		(void)FUNC52(spcl.c_filesys, dt->fs_file, NAMELEN);
	} else {
		(void)FUNC52(spcl.c_dev, disk, NAMELEN);
		(void)FUNC52(spcl.c_filesys, "an unlisted file system",
		    NAMELEN);
	}
	spcl.c_dev[NAMELEN-1]='\0';
	spcl.c_filesys[NAMELEN-1]='\0';

	if ((mntpt = FUNC23(disk, &mntflags)) != NULL) {
		if (mntflags & MNT_RDONLY) {
			if (snapdump != 0) {
				FUNC30("WARNING: %s\n",
				    "-L ignored for read-only filesystem.");
				snapdump = 0;
			}
		} else if (snapdump == 0) {
			FUNC30("WARNING: %s\n",
			    "should use -L when dumping live read-write "
			    "filesystems!");
		} else {
			char snapname[BUFSIZ], snapcmd[BUFSIZ];

			FUNC45(snapname, sizeof snapname, "%s/.snap", mntpt);
			if ((FUNC47(snapname, &sb) < 0) || !FUNC1(sb.st_mode)) {
				FUNC30("WARNING: %s %s\n",
				    "-L requested but snapshot location",
				    snapname);
				FUNC30("         %s: %s\n",
				    "is not a directory",
				    "dump downgraded, -L ignored");
				snapdump = 0;
			} else {
				FUNC45(snapname, sizeof snapname,
				    "%s/.snap/dump_snapshot", mntpt);
				FUNC45(snapcmd, sizeof snapcmd, "%s %s %s",
				    _PATH_MKSNAP_FFS, mntpt, snapname);
				FUNC58(snapname);
				if (FUNC54(snapcmd) != 0)
					FUNC12(X_STARTUP, "Cannot create %s: %s\n",
					    snapname, FUNC51(errno));
				if ((diskfd = FUNC34(snapname, O_RDONLY)) < 0) {
					FUNC58(snapname);
					FUNC12(X_STARTUP, "Cannot open %s: %s\n",
					    snapname, FUNC51(errno));
				}
				FUNC58(snapname);
				if (FUNC18(diskfd, &sb) != 0)
					FUNC11(X_STARTUP, "%s: stat", snapname);
				spcl.c_date = FUNC3(sb.st_mtime);
			}
		}
	} else if (snapdump != 0) {
		FUNC30("WARNING: Cannot use -L on an unmounted filesystem.\n");
		snapdump = 0;
	}
	if (snapdump == 0) {
		if ((diskfd = FUNC34(disk, O_RDONLY)) < 0)
			FUNC11(X_STARTUP, "Cannot open %s", disk);
		if (FUNC18(diskfd, &sb) != 0)
			FUNC11(X_STARTUP, "%s: stat", disk);
		if (FUNC1(sb.st_mode))
			FUNC12(X_STARTUP, "%s: unknown file system", disk);
	}

	(void)FUNC50(spcl.c_label, "none");
	(void)FUNC21(spcl.c_host, NAMELEN);
	spcl.c_level = level;
	spcl.c_type = TS_TAPE;
	if (rsync_friendly) {
		/* don't store real dump times */
		spcl.c_date = 0;
		spcl.c_ddate = 0;
	}
	if (spcl.c_date == 0) {
		tmsg = "the epoch\n";
	} else {
		time_t t = FUNC2(spcl.c_date);
		tmsg = FUNC7(&t);
	}
	FUNC30("Date of this level %d dump: %s", level, tmsg);

	if (!Tflag && (!rsync_friendly))
	        FUNC19();		/* /etc/dumpdates snarfed */
	if (spcl.c_ddate == 0) {
		tmsg = "the epoch\n";
	} else {
		time_t t = FUNC2(spcl.c_ddate);
		tmsg = FUNC7(&t);
	}
	if (lastlevel < 0)
		FUNC30("Date of last (level unknown) dump: %s", tmsg);
	else
		FUNC30("Date of last level %d dump: %s", lastlevel, tmsg);

	FUNC30("Dumping %s%s ", snapdump ? "snapshot of ": "", disk);
	if (dt != NULL)
		FUNC31("(%s) ", dt->fs_file);
	if (host)
		FUNC31("to %s on host %s\n", tape, host);
	else
		FUNC31("to %s\n", tape);

	FUNC53();
	if ((ret = FUNC41(diskfd, &sblock, STDSB)) != 0) {
		switch (ret) {
		case ENOENT:
			FUNC60("Cannot find file system superblock");
			return (1);
		default:
			FUNC60("Unable to read file system superblock");
			return (1);
		}
	}
	dev_bsize = sblock->fs_fsize / FUNC16(sblock, 1);
	dev_bshift = FUNC14(dev_bsize) - 1;
	if (dev_bsize != (1 << dev_bshift))
		FUNC36("dev_bsize (%ld) is not a power of 2", dev_bsize);
	tp_bshift = FUNC14(TP_BSIZE) - 1;
	if (TP_BSIZE != (1 << tp_bshift))
		FUNC36("TP_BSIZE (%d) is not a power of 2", TP_BSIZE);
	maxino = sblock->fs_ipg * sblock->fs_ncg;
	mapsize = FUNC40(FUNC26(maxino, CHAR_BIT), TP_BSIZE);
	usedinomap = (char *)FUNC6((unsigned) mapsize, sizeof(char));
	dumpdirmap = (char *)FUNC6((unsigned) mapsize, sizeof(char));
	dumpinomap = (char *)FUNC6((unsigned) mapsize, sizeof(char));
	tapesize = 3 * (FUNC26(mapsize * sizeof(char), TP_BSIZE) + 1);

	nonodump = spcl.c_level < honorlevel;

	passno = 1;
	FUNC42("%s: pass 1: regular files", disk);
	FUNC30("mapping (Pass I) [regular files]\n");
	anydirskipped = FUNC29(maxino, &tapesize);

	passno = 2;
	FUNC42("%s: pass 2: directories", disk);
	FUNC30("mapping (Pass II) [directories]\n");
	while (anydirskipped) {
		anydirskipped = FUNC28(maxino, &tapesize);
	}

	if (pipeout || unlimited) {
		tapesize += 10;	/* 10 trailer blocks */
		FUNC30("estimated %ld tape blocks.\n", tapesize);
	} else {
		double fetapes;

		if (blocksperfile)
			fetapes = (double) tapesize / blocksperfile;
		else if (cartridge) {
			/* Estimate number of tapes, assuming streaming stops at
			   the end of each block written, and not in mid-block.
			   Assume no erroneous blocks; this can be compensated
			   for with an artificially low tape size. */
			fetapes =
			(	  (double) tapesize	/* blocks */
				* TP_BSIZE	/* bytes/block */
				* (1.0/density)	/* 0.1" / byte " */
			  +
				  (double) tapesize	/* blocks */
				* (1.0/ntrec)	/* streaming-stops per block */
				* 15.48		/* 0.1" / streaming-stop " */
			) * (1.0 / tsize );	/* tape / 0.1" " */
		} else {
			/* Estimate number of tapes, for old fashioned 9-track
			   tape */
			int tenthsperirg = (density == 625) ? 3 : 7;
			fetapes =
			(	  (double) tapesize	/* blocks */
				* TP_BSIZE	/* bytes / block */
				* (1.0/density)	/* 0.1" / byte " */
			  +
				  (double) tapesize	/* blocks */
				* (1.0/ntrec)	/* IRG's / block */
				* tenthsperirg	/* 0.1" / IRG " */
			) * (1.0 / tsize );	/* tape / 0.1" " */
		}
		etapes = fetapes;		/* truncating assignment */
		etapes++;
		/* count the dumped inodes map on each additional tape */
		tapesize += (etapes - 1) *
			(FUNC26(mapsize * sizeof(char), TP_BSIZE) + 1);
		tapesize += etapes + 10;	/* headers + 10 trailer blks */
		FUNC30("estimated %ld tape blocks on %3.2f tape(s).\n",
		    tapesize, fetapes);
	}

        /*
         * If the user only wants an estimate of the number of
         * tapes, exit now.
         */
        if (just_estimate)
                FUNC13(0);

	/*
	 * Allocate tape buffer.
	 */
	if (!FUNC4())
		FUNC36(
	"can't allocate tape buffers - try a smaller blocking factor.\n");

	FUNC46(1);
	(void)FUNC55((time_t *)&(tstart_writing));
	FUNC10(usedinomap, TS_CLRI, maxino - 1);

	passno = 3;
	FUNC42("%s: pass 3: directories", disk);
	FUNC30("dumping (Pass III) [directories]\n");
	dirty = 0;		/* XXX just to get gcc to shut up */
	for (map = dumpdirmap, ino = 1; ino < maxino; ino++) {
		if (((ino - 1) % CHAR_BIT) == 0)	/* map is offset by 1 */
			dirty = *map++;
		else
			dirty >>= 1;
		if ((dirty & 1) == 0)
			continue;
		/*
		 * Skip directory inodes deleted and maybe reallocated
		 */
		dp = FUNC22(ino, &mode);
		if (mode != IFDIR)
			continue;
		(void)FUNC9(dp, ino);
	}

	passno = 4;
	FUNC42("%s: pass 4: regular files", disk);
	FUNC30("dumping (Pass IV) [regular files]\n");
	for (map = dumpinomap, ino = 1; ino < maxino; ino++) {
		if (((ino - 1) % CHAR_BIT) == 0)	/* map is offset by 1 */
			dirty = *map++;
		else
			dirty >>= 1;
		if ((dirty & 1) == 0)
			continue;
		/*
		 * Skip inodes deleted and reallocated as directories.
		 */
		dp = FUNC22(ino, &mode);
		if (mode == IFDIR)
			continue;
		(void)FUNC9(dp, ino);
	}

	(void)FUNC55((time_t *)&(tend_writing));
	spcl.c_type = TS_END;
	for (i = 0; i < ntrec; i++)
		FUNC61(maxino - 1);
	if (pipeout)
		FUNC30("DUMP: %jd tape blocks\n", (intmax_t)spcl.c_tapea);
	else
		FUNC30("DUMP: %jd tape blocks on %d volume%s\n",
		    (intmax_t)spcl.c_tapea, spcl.c_volume,
		    (spcl.c_volume == 1) ? "" : "s");

	/* report dump performance, avoid division through zero */
	if (tend_writing - tstart_writing == 0)
		FUNC30("finished in less than a second\n");
	else
		FUNC30("finished in %jd seconds, throughput %jd KBytes/sec\n",
		    (intmax_t)tend_writing - tstart_writing, 
		    (intmax_t)(spcl.c_tapea / 
		    (tend_writing - tstart_writing)));

	FUNC35();
	FUNC56();
	FUNC5("DUMP IS DONE!\a\a\n");
	FUNC30("DUMP IS DONE\n");
	FUNC0(X_FINOK);
	/* NOTREACHED */
}