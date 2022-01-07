
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_rights_t ;


 int CAP_CREATE ;
 int CAP_FCNTL ;
 int CAP_FSTATAT ;
 int CAP_FSTATFS ;
 int CAP_FTRUNCATE ;
 int CAP_PREAD ;
 int CAP_SYMLINKAT ;
 int CAP_UNLINKAT ;
 int CAP_WRITE ;
 int DoFile (char const*,int,char*) ;
 int LOG_DAEMON ;
 int LOG_ERR ;
 int LOG_PERROR ;
 int LOG_WARNING ;
 int O_DIRECTORY ;
 int O_RDONLY ;
 int SIGINFO ;
 scalar_t__ atoi (int ) ;
 int cap_rights_init (int *,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ caph_rights_limit (int,int *) ;
 int chdir (char*) ;
 int checkfor ;
 int clear ;
 int compress ;
 char** enum_dumpdevs (int*) ;
 int exit (int) ;
 int force ;
 int getopt (int,char**,char*) ;
 int infohandler ;
 int init_caps (int,char**) ;
 int keep ;
 int logmsg (int ,char*,...) ;
 scalar_t__ maxdumps ;
 scalar_t__ nerr ;
 scalar_t__ nfound ;
 scalar_t__ nsaved ;
 int open (char const*,int) ;
 int openlog (char*,int ,int ) ;
 int optarg ;
 scalar_t__ optind ;
 int printf (char*) ;
 int signal (int ,int ) ;
 int usage () ;
 int verbose ;
 int xo_parse_args (int,char**) ;

int
main(int argc, char **argv)
{
 cap_rights_t rights;
 const char *savedir;
 int i, ch, error, savedirfd;

 checkfor = compress = clear = force = keep = verbose = 0;
 nfound = nsaved = nerr = 0;
 savedir = ".";

 openlog("savecore", LOG_PERROR, LOG_DAEMON);
 signal(SIGINFO, infohandler);

 argc = xo_parse_args(argc, argv);
 if (argc < 0)
  exit(1);

 while ((ch = getopt(argc, argv, "Ccfkm:vz")) != -1)
  switch(ch) {
  case 'C':
   checkfor = 1;
   break;
  case 'c':
   clear = 1;
   break;
  case 'f':
   force = 1;
   break;
  case 'k':
   keep = 1;
   break;
  case 'm':
   maxdumps = atoi(optarg);
   if (maxdumps <= 0) {
    logmsg(LOG_ERR, "Invalid maxdump value");
    exit(1);
   }
   break;
  case 'v':
   verbose++;
   break;
  case 'z':
   compress = 1;
   break;
  case '?':
  default:
   usage();
  }
 if (checkfor && (clear || force || keep))
  usage();
 if (clear && (compress || keep))
  usage();
 if (maxdumps > 0 && (checkfor || clear))
  usage();
 argc -= optind;
 argv += optind;
 if (argc >= 1 && !checkfor && !clear) {
  error = chdir(argv[0]);
  if (error) {
   logmsg(LOG_ERR, "chdir(%s): %m", argv[0]);
   exit(1);
  }
  savedir = argv[0];
  argc--;
  argv++;
 }
 if (argc == 0)
  argv = enum_dumpdevs(&argc);

 savedirfd = open(savedir, O_RDONLY | O_DIRECTORY);
 if (savedirfd < 0) {
  logmsg(LOG_ERR, "open(%s): %m", savedir);
  exit(1);
 }
 (void)cap_rights_init(&rights, CAP_CREATE, CAP_FCNTL, CAP_FSTATAT,
     CAP_FSTATFS, CAP_PREAD, CAP_SYMLINKAT, CAP_FTRUNCATE, CAP_UNLINKAT,
     CAP_WRITE);
 if (caph_rights_limit(savedirfd, &rights) < 0) {
  logmsg(LOG_ERR, "cap_rights_limit(): %m");
  exit(1);
 }


 init_caps(argc, argv);

 for (i = 0; i < argc; i++)
  DoFile(savedir, savedirfd, argv[i]);


 if (nfound == 0) {
  if (checkfor) {
   if (verbose)
    printf("No dump exists\n");
   exit(1);
  }
  if (verbose)
   logmsg(LOG_WARNING, "no dumps found");
 } else if (nsaved == 0) {
  if (nerr != 0) {
   if (verbose)
    logmsg(LOG_WARNING,
        "unsaved dumps found but not saved");
   exit(1);
  } else if (verbose)
   logmsg(LOG_WARNING, "no unsaved dumps found");
 }

 return (0);
}
