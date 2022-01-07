
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union dinode {int dummy; } dinode ;
typedef int time_t ;
struct stat {int st_mode; int st_mtime; } ;
struct fstab {char* fs_spec; char* fs_file; } ;
typedef int intmax_t ;
typedef int ino_t ;
struct TYPE_6__ {int fs_fsize; int fs_ipg; int fs_ncg; } ;
struct TYPE_5__ {scalar_t__ c_date; scalar_t__ c_ddate; char* c_dev; char* c_filesys; int c_level; int c_tapea; int c_volume; int c_type; int c_host; int c_label; } ;


 int BUFSIZ ;
 int CHAR_BIT ;
 int DEV_BSIZE ;

 int Exit (int ) ;
 double HIGHDENSITYTREC ;
 int IFDIR ;
 int MNT_RDONLY ;
 int NAMELEN ;
 int O_RDONLY ;
 int SIGBUS ;
 int SIGFPE ;
 int SIGHUP ;
 int SIGINT ;
 int SIGSEGV ;
 int SIGTERM ;
 int SIGTRAP ;
 scalar_t__ SIG_IGN ;
 int STDSB ;
 scalar_t__ S_ISDIR (int ) ;
 int TP_BSIZE ;
 int TS_CLRI ;
 int TS_END ;
 int TS_TAPE ;
 int X_FINOK ;
 int X_STARTUP ;
 char* _PATH_DEFTAPE ;
 int _PATH_DTMP ;
 char* _PATH_DUMPDATES ;
 char* _PATH_MKSNAP_FFS ;
 int _time64_to_time (scalar_t__) ;
 void* _time_to_time64 (int ) ;
 int alloctape () ;
 int blocksperfile ;
 int broadcast (char*) ;
 int cachesize ;
 scalar_t__ calloc (unsigned int,int) ;
 int cartridge ;
 char* ctime (int *) ;
 int density ;
 int dev_bshift ;
 int dev_bsize ;
 char* disk ;
 int diskfd ;
 int dump_getfstab () ;
 char* dumpdates ;
 char* dumpdirmap ;
 int dumpino (union dinode*,int) ;
 char* dumpinomap ;
 int dumpmap (char*,int ,int) ;
 int err (int ,char*,char*) ;
 int errno ;
 int errx (int ,char*,...) ;
 int etapes ;
 int exit (int ) ;
 int ffs (int) ;
 int fprintf (int ,char*,...) ;
 int fsbtodb (TYPE_2__*,int) ;
 struct fstab* fstabsearch (char*) ;
 scalar_t__ fstat (int ,struct stat*) ;
 int getdumptime () ;
 char* getenv (char*) ;
 int gethostname (int ,int) ;
 union dinode* getino (int,int*) ;
 char* getmntpt (char*,int*) ;
 int getopt (int,char**,char*) ;
 int getuid () ;
 char* host ;
 int howmany (int,int) ;
 scalar_t__ interrupt ;
 int lastdump (int) ;
 int lastlevel ;
 int level ;
 int mapdirs (int,int*) ;
 int mapfiles (int,int*) ;
 int mapsize ;
 int msg (char*,...) ;
 int msgtail (char*,char*,...) ;
 int nonodump ;
 int notify ;
 double ntrec ;
 int numarg (char*,long,long) ;
 int obsolete (int*,char***) ;
 int open (char*,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int passno ;
 scalar_t__ pipeout ;
 char* popenout ;
 int putdumptime () ;
 int quit (char*,...) ;
 char* rawname (char*) ;
 scalar_t__ rmthost (char*) ;
 int rounddown (int,double) ;
 int roundup (int,int) ;
 int rsync_friendly ;
 int sbget (int ,TYPE_2__**,int ) ;
 TYPE_2__* sblock ;
 int setproctitle (char*,char*) ;
 int setuid (int ) ;
 scalar_t__ sig ;
 scalar_t__ signal (int ,scalar_t__) ;
 scalar_t__ snapdump ;
 int snprintf (char*,int,char*,char*,...) ;
 TYPE_1__ spcl ;
 int startnewtape (int) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stderr ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (int ,char*) ;
 int strerror (int ) ;
 int strncpy (char*,char*,int) ;
 int sync () ;
 scalar_t__ system (char*) ;
 char* tape ;
 int tapesize ;
 int temp ;
 scalar_t__ tend_writing ;
 int time (int *) ;
 int tp_bshift ;
 int trewind () ;
 double tsize ;
 scalar_t__ tstart_writing ;
 int uflag ;
 scalar_t__ unctime (char*) ;
 int unlimited ;
 int unlink (char*) ;
 int usage () ;
 char* usedinomap ;
 int warn (char*) ;
 int writeheader (int) ;

int
main(int argc, char *argv[])
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

 spcl.c_date = _time_to_time64(time(((void*)0)));

 tsize = 0;
 dumpdates = _PATH_DUMPDATES;
 popenout = ((void*)0);
 tape = ((void*)0);
 temp = _PATH_DTMP;
 if (TP_BSIZE / DEV_BSIZE == 0 || TP_BSIZE % DEV_BSIZE != 0)
  quit("TP_BSIZE must be a multiple of DEV_BSIZE\n");
 level = 0;
 rsync_friendly = 0;

 if (argc < 2)
  usage();

 obsolete(&argc, &argv);
 while ((ch = getopt(argc, argv,
     "0123456789aB:b:C:cD:d:f:h:LnP:RrSs:T:uWw")) != -1)
  switch (ch) {

  case '0': case '1': case '2': case '3': case '4':
  case '5': case '6': case '7': case '8': case '9':
   level = 10 * level + ch - '0';
   break;

  case 'a':
   unlimited = 1;
   break;

  case 'B':
   blocksperfile = numarg("number of blocks per file",
       1L, 0L);
   break;

  case 'b':
   ntrec = numarg("number of blocks per write",
       1L, 1000L);
   break;

  case 'C':
   cachesize = numarg("cachesize", 0, 0) * 1024 * 1024;
   break;

  case 'c':
   cartridge = 1;
   break;

  case 'D':
   dumpdates = optarg;
   break;

  case 'd':
   density = numarg("density", 10L, 327670L) / 10;
   if (density >= 625 && !bflag)
    ntrec = HIGHDENSITYTREC;
   break;

  case 'f':
   if (popenout != ((void*)0))
    errx(X_STARTUP, "You cannot use the P and f "
        "flags together.\n");
   tape = optarg;
   break;

  case 'h':
   honorlevel = numarg("honor level", 0L, 10L);
   break;

  case 'L':
   snapdump = 1;
   break;

  case 'n':
   notify = 1;
   break;

  case 'P':
   if (tape != ((void*)0))
    errx(X_STARTUP, "You cannot use the P and f "
        "flags together.\n");
   popenout = optarg;
   break;

  case 'r':
   if (rsync_friendly < 1)
    rsync_friendly = 1;
   break;

  case 'R':
   if (rsync_friendly < 2)
    rsync_friendly = 2;
   break;

  case 'S':
   just_estimate = 1;
   break;

  case 's':
   tsize = numarg("tape size", 1L, 0L) * 12 * 10;
   break;

  case 'T':
   spcl.c_ddate = unctime(optarg);
   if (spcl.c_ddate < 0) {
    (void)fprintf(stderr, "bad time \"%s\"\n",
        optarg);
    exit(X_STARTUP);
   }
   Tflag = 1;
   lastlevel = -1;
   break;

  case 'u':
   uflag = 1;
   break;

  case 'W':
  case 'w':
   lastdump(ch);
   exit(X_FINOK);

  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (argc < 1) {
  (void)fprintf(stderr, "Must specify disk or file system\n");
  exit(X_STARTUP);
 }
 disk = *argv++;
 argc--;
 if (argc >= 1) {
  (void)fprintf(stderr, "Unknown arguments to dump:");
  while (argc--)
   (void)fprintf(stderr, " %s", *argv++);
  (void)fprintf(stderr, "\n");
  exit(X_STARTUP);
 }
 if (rsync_friendly && (level > 0)) {
  (void)fprintf(stderr, "%s %s\n", "rsync friendly options",
      "can be used only with level 0 dumps.");
  exit(X_STARTUP);
 }
 if (Tflag && uflag) {
         (void)fprintf(stderr,
      "You cannot use the T and u flags together.\n");
  exit(X_STARTUP);
 }
 if (popenout) {
  tape = "child pipeline process";
 } else if (tape == ((void*)0) && (tape = getenv("TAPE")) == ((void*)0))
  tape = _PATH_DEFTAPE;
 if (strcmp(tape, "-") == 0) {
  pipeout++;
  tape = "standard output";
 }

 if (blocksperfile)
  blocksperfile = rounddown(blocksperfile, ntrec);
 else if (!unlimited) {
  if (density == 0)
   density = cartridge ? 100 : 160;
  if (tsize == 0)
   tsize = cartridge ? 1700L*120L : 2300L*120L;
 }

 if (strchr(tape, ':')) {
  host = tape;
  tape = strchr(host, ':');
  *tape++ = '\0';
  (void)fprintf(stderr, "remote dump not enabled\n");
  exit(X_STARTUP);

 }
 (void)setuid(getuid());

 if (signal(SIGHUP, SIG_IGN) != SIG_IGN)
  signal(SIGHUP, sig);
 if (signal(SIGTRAP, SIG_IGN) != SIG_IGN)
  signal(SIGTRAP, sig);
 if (signal(SIGFPE, SIG_IGN) != SIG_IGN)
  signal(SIGFPE, sig);
 if (signal(SIGBUS, SIG_IGN) != SIG_IGN)
  signal(SIGBUS, sig);
 if (signal(SIGSEGV, SIG_IGN) != SIG_IGN)
  signal(SIGSEGV, sig);
 if (signal(SIGTERM, SIG_IGN) != SIG_IGN)
  signal(SIGTERM, sig);
 if (signal(SIGINT, interrupt) == SIG_IGN)
  signal(SIGINT, SIG_IGN);

 dump_getfstab();






 dt = fstabsearch(disk);
 if (dt != ((void*)0)) {
  disk = rawname(dt->fs_spec);
   if (disk == ((void*)0))
    errx(X_STARTUP, "%s: unknown file system", dt->fs_spec);
  (void)strncpy(spcl.c_dev, dt->fs_spec, NAMELEN);
  (void)strncpy(spcl.c_filesys, dt->fs_file, NAMELEN);
 } else {
  (void)strncpy(spcl.c_dev, disk, NAMELEN);
  (void)strncpy(spcl.c_filesys, "an unlisted file system",
      NAMELEN);
 }
 spcl.c_dev[NAMELEN-1]='\0';
 spcl.c_filesys[NAMELEN-1]='\0';

 if ((mntpt = getmntpt(disk, &mntflags)) != ((void*)0)) {
  if (mntflags & MNT_RDONLY) {
   if (snapdump != 0) {
    msg("WARNING: %s\n",
        "-L ignored for read-only filesystem.");
    snapdump = 0;
   }
  } else if (snapdump == 0) {
   msg("WARNING: %s\n",
       "should use -L when dumping live read-write "
       "filesystems!");
  } else {
   char snapname[BUFSIZ], snapcmd[BUFSIZ];

   snprintf(snapname, sizeof snapname, "%s/.snap", mntpt);
   if ((stat(snapname, &sb) < 0) || !S_ISDIR(sb.st_mode)) {
    msg("WARNING: %s %s\n",
        "-L requested but snapshot location",
        snapname);
    msg("         %s: %s\n",
        "is not a directory",
        "dump downgraded, -L ignored");
    snapdump = 0;
   } else {
    snprintf(snapname, sizeof snapname,
        "%s/.snap/dump_snapshot", mntpt);
    snprintf(snapcmd, sizeof snapcmd, "%s %s %s",
        _PATH_MKSNAP_FFS, mntpt, snapname);
    unlink(snapname);
    if (system(snapcmd) != 0)
     errx(X_STARTUP, "Cannot create %s: %s\n",
         snapname, strerror(errno));
    if ((diskfd = open(snapname, O_RDONLY)) < 0) {
     unlink(snapname);
     errx(X_STARTUP, "Cannot open %s: %s\n",
         snapname, strerror(errno));
    }
    unlink(snapname);
    if (fstat(diskfd, &sb) != 0)
     err(X_STARTUP, "%s: stat", snapname);
    spcl.c_date = _time_to_time64(sb.st_mtime);
   }
  }
 } else if (snapdump != 0) {
  msg("WARNING: Cannot use -L on an unmounted filesystem.\n");
  snapdump = 0;
 }
 if (snapdump == 0) {
  if ((diskfd = open(disk, O_RDONLY)) < 0)
   err(X_STARTUP, "Cannot open %s", disk);
  if (fstat(diskfd, &sb) != 0)
   err(X_STARTUP, "%s: stat", disk);
  if (S_ISDIR(sb.st_mode))
   errx(X_STARTUP, "%s: unknown file system", disk);
 }

 (void)strcpy(spcl.c_label, "none");
 (void)gethostname(spcl.c_host, NAMELEN);
 spcl.c_level = level;
 spcl.c_type = TS_TAPE;
 if (rsync_friendly) {

  spcl.c_date = 0;
  spcl.c_ddate = 0;
 }
 if (spcl.c_date == 0) {
  tmsg = "the epoch\n";
 } else {
  time_t t = _time64_to_time(spcl.c_date);
  tmsg = ctime(&t);
 }
 msg("Date of this level %d dump: %s", level, tmsg);

 if (!Tflag && (!rsync_friendly))
         getdumptime();
 if (spcl.c_ddate == 0) {
  tmsg = "the epoch\n";
 } else {
  time_t t = _time64_to_time(spcl.c_ddate);
  tmsg = ctime(&t);
 }
 if (lastlevel < 0)
  msg("Date of last (level unknown) dump: %s", tmsg);
 else
  msg("Date of last level %d dump: %s", lastlevel, tmsg);

 msg("Dumping %s%s ", snapdump ? "snapshot of ": "", disk);
 if (dt != ((void*)0))
  msgtail("(%s) ", dt->fs_file);
 if (host)
  msgtail("to %s on host %s\n", tape, host);
 else
  msgtail("to %s\n", tape);

 sync();
 if ((ret = sbget(diskfd, &sblock, STDSB)) != 0) {
  switch (ret) {
  case 128:
   warn("Cannot find file system superblock");
   return (1);
  default:
   warn("Unable to read file system superblock");
   return (1);
  }
 }
 dev_bsize = sblock->fs_fsize / fsbtodb(sblock, 1);
 dev_bshift = ffs(dev_bsize) - 1;
 if (dev_bsize != (1 << dev_bshift))
  quit("dev_bsize (%ld) is not a power of 2", dev_bsize);
 tp_bshift = ffs(TP_BSIZE) - 1;
 if (TP_BSIZE != (1 << tp_bshift))
  quit("TP_BSIZE (%d) is not a power of 2", TP_BSIZE);
 maxino = sblock->fs_ipg * sblock->fs_ncg;
 mapsize = roundup(howmany(maxino, CHAR_BIT), TP_BSIZE);
 usedinomap = (char *)calloc((unsigned) mapsize, sizeof(char));
 dumpdirmap = (char *)calloc((unsigned) mapsize, sizeof(char));
 dumpinomap = (char *)calloc((unsigned) mapsize, sizeof(char));
 tapesize = 3 * (howmany(mapsize * sizeof(char), TP_BSIZE) + 1);

 nonodump = spcl.c_level < honorlevel;

 passno = 1;
 setproctitle("%s: pass 1: regular files", disk);
 msg("mapping (Pass I) [regular files]\n");
 anydirskipped = mapfiles(maxino, &tapesize);

 passno = 2;
 setproctitle("%s: pass 2: directories", disk);
 msg("mapping (Pass II) [directories]\n");
 while (anydirskipped) {
  anydirskipped = mapdirs(maxino, &tapesize);
 }

 if (pipeout || unlimited) {
  tapesize += 10;
  msg("estimated %ld tape blocks.\n", tapesize);
 } else {
  double fetapes;

  if (blocksperfile)
   fetapes = (double) tapesize / blocksperfile;
  else if (cartridge) {




   fetapes =
   ( (double) tapesize
    * TP_BSIZE
    * (1.0/density)
     +
      (double) tapesize
    * (1.0/ntrec)
    * 15.48
   ) * (1.0 / tsize );
  } else {


   int tenthsperirg = (density == 625) ? 3 : 7;
   fetapes =
   ( (double) tapesize
    * TP_BSIZE
    * (1.0/density)
     +
      (double) tapesize
    * (1.0/ntrec)
    * tenthsperirg
   ) * (1.0 / tsize );
  }
  etapes = fetapes;
  etapes++;

  tapesize += (etapes - 1) *
   (howmany(mapsize * sizeof(char), TP_BSIZE) + 1);
  tapesize += etapes + 10;
  msg("estimated %ld tape blocks on %3.2f tape(s).\n",
      tapesize, fetapes);
 }





        if (just_estimate)
                exit(0);




 if (!alloctape())
  quit(
 "can't allocate tape buffers - try a smaller blocking factor.\n");

 startnewtape(1);
 (void)time((time_t *)&(tstart_writing));
 dumpmap(usedinomap, TS_CLRI, maxino - 1);

 passno = 3;
 setproctitle("%s: pass 3: directories", disk);
 msg("dumping (Pass III) [directories]\n");
 dirty = 0;
 for (map = dumpdirmap, ino = 1; ino < maxino; ino++) {
  if (((ino - 1) % CHAR_BIT) == 0)
   dirty = *map++;
  else
   dirty >>= 1;
  if ((dirty & 1) == 0)
   continue;



  dp = getino(ino, &mode);
  if (mode != IFDIR)
   continue;
  (void)dumpino(dp, ino);
 }

 passno = 4;
 setproctitle("%s: pass 4: regular files", disk);
 msg("dumping (Pass IV) [regular files]\n");
 for (map = dumpinomap, ino = 1; ino < maxino; ino++) {
  if (((ino - 1) % CHAR_BIT) == 0)
   dirty = *map++;
  else
   dirty >>= 1;
  if ((dirty & 1) == 0)
   continue;



  dp = getino(ino, &mode);
  if (mode == IFDIR)
   continue;
  (void)dumpino(dp, ino);
 }

 (void)time((time_t *)&(tend_writing));
 spcl.c_type = TS_END;
 for (i = 0; i < ntrec; i++)
  writeheader(maxino - 1);
 if (pipeout)
  msg("DUMP: %jd tape blocks\n", (intmax_t)spcl.c_tapea);
 else
  msg("DUMP: %jd tape blocks on %d volume%s\n",
      (intmax_t)spcl.c_tapea, spcl.c_volume,
      (spcl.c_volume == 1) ? "" : "s");


 if (tend_writing - tstart_writing == 0)
  msg("finished in less than a second\n");
 else
  msg("finished in %jd seconds, throughput %jd KBytes/sec\n",
      (intmax_t)tend_writing - tstart_writing,
      (intmax_t)(spcl.c_tapea /
      (tend_writing - tstart_writing)));

 putdumptime();
 trewind();
 broadcast("DUMP IS DONE!\a\a\n");
 msg("DUMP IS DONE\n");
 Exit(X_FINOK);

}
