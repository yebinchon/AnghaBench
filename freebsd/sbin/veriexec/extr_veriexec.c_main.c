
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* Cdir ;
 int EX_DATAERR ;
 int EX_OK ;
 int EX_OSFILE ;
 int EX_UNAVAILABLE ;
 int EX_USAGE ;
 int LOG_AUTH ;
 int LOG_PID ;
 int O_WRONLY ;
 unsigned long VERIEXEC_ACTIVE ;
 unsigned long VERIEXEC_DEBUG_OFF ;
 unsigned long VERIEXEC_DEBUG_ON ;
 unsigned long VERIEXEC_ENFORCE ;
 unsigned long VERIEXEC_GETSTATE ;
 unsigned long VERIEXEC_GETVERSION ;
 unsigned long VERIEXEC_LOCK ;
 unsigned long VERIEXEC_STATE_ACTIVE ;
 unsigned long VERIEXEC_STATE_ENFORCE ;
 unsigned long VERIEXEC_STATE_LOADED ;
 unsigned long VERIEXEC_STATE_LOCKED ;
 int Verbose ;
 int VeriexecVersion ;
 int _PATH_DEV_VERIEXEC ;
 int atoi (char*) ;
 int dev_fd ;
 int err (int ,char*,...) ;
 int errx (int ,char*,...) ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 int getprogname () ;
 scalar_t__ ioctl (int ,unsigned long,int*) ;
 int open (int ,int ,int ) ;
 int openlog (int ,int ,int ) ;
 char* optarg ;
 int optind ;
 int printf (char*,int) ;
 int strncmp (char*,char*,int) ;
 int strstr (char*,char*) ;
 int ve_trust_init () ;
 int veriexec_check_path (char*) ;
 scalar_t__ veriexec_load (char*) ;
 int warn (char*,char*) ;

int
main(int argc, char *argv[])
{
 unsigned long ctl;
 int c;
 int x;

 dev_fd = open(_PATH_DEV_VERIEXEC, O_WRONLY, 0);

 while ((c = getopt(argc, argv, "C:i:x:vz:")) != -1) {
  switch (c) {
  case 'C':
   Cdir = optarg;
   break;
  case 'i':
   if (dev_fd < 0) {
    err(EX_UNAVAILABLE, "cannot open veriexec");
   }
   if (ioctl(dev_fd, VERIEXEC_GETSTATE, &x)) {
    err(EX_UNAVAILABLE,
        "Cannot get veriexec state");
   }
   switch (optarg[0]) {
   case 'a':
    ctl = VERIEXEC_STATE_ACTIVE;
    break;
   case 'e':
    ctl = VERIEXEC_STATE_ENFORCE;
    break;
   case 'l':
    ctl = (strncmp(optarg, "lock", 4)) ?
        VERIEXEC_STATE_LOCKED :
        VERIEXEC_STATE_LOADED;
    break;
   default:
    errx(EX_USAGE, "unknown state %s", optarg);
    break;
   }
   exit((x & ctl) == 0);
   break;
  case 'v':
   Verbose++;
   break;
  case 'x':



   for (x = 0; optind < argc; optind++) {
    if (veriexec_check_path(argv[optind])) {
     warn("%s", argv[optind]);
     x = 2;
    }
   }
   exit(x);
   break;
  case 'z':
   switch (optarg[0]) {
   case 'a':
    ctl = VERIEXEC_ACTIVE;
    break;
   case 'd':
    ctl = (strstr(optarg, "off")) ?
        VERIEXEC_DEBUG_OFF : VERIEXEC_DEBUG_ON;
    if (optind < argc && ctl == VERIEXEC_DEBUG_ON) {
     x = atoi(argv[optind]);
     if (x == 0)
      ctl = VERIEXEC_DEBUG_OFF;
    }
    break;
   case 'e':
    ctl = VERIEXEC_ENFORCE;
    break;
   case 'g':
    ctl = VERIEXEC_GETSTATE;
    break;
   case 'l':
    ctl = VERIEXEC_LOCK;
    break;
   default:
    errx(EX_USAGE, "unknown command %s", optarg);
    break;
   }
   if (dev_fd < 0) {
    err(EX_UNAVAILABLE, "cannot open veriexec");
   }
   if (ioctl(dev_fd, ctl, &x)) {
    err(EX_UNAVAILABLE, "cannot %s veriexec", optarg);
   }
   if (ctl == VERIEXEC_DEBUG_ON ||
       ctl == VERIEXEC_DEBUG_OFF) {
    printf("debug is: %d\n", x);
   } else if (ctl == VERIEXEC_GETSTATE) {
    printf("%#o\n", x);
   }
   exit(EX_OK);
   break;
  }
 }
 openlog(getprogname(), LOG_PID, LOG_AUTH);
 if (ve_trust_init() < 1)
  errx(EX_OSFILE, "cannot initialize trust store");






 for (; optind < argc; optind++) {
  if (veriexec_load(argv[optind])) {
   err(EX_DATAERR, "cannot load %s", argv[optind]);
  }
 }
 exit(EX_OK);
}
