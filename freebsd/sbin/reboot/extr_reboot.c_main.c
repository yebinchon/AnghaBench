
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct utmpx {int ut_tv; int ut_type; } ;
struct passwd {char* pw_name; } ;


 int EPERM ;
 int ESRCH ;
 int LOG_AUTH ;
 int LOG_CONS ;
 int LOG_CRIT ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int RB_DUMP ;
 int RB_HALT ;
 int RB_NOSYNC ;
 int RB_POWERCYCLE ;
 int RB_POWEROFF ;
 int RB_REROOT ;
 int SHUTDOWN_TIME ;
 int SIGEMT ;
 int SIGHUP ;
 int SIGINT ;
 int SIGKILL ;
 int SIGPIPE ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIGTSTP ;
 int SIG_IGN ;
 int close (int) ;
 int dohalt ;
 int err (int,char*) ;
 int errno ;
 int errx (int,char*,...) ;
 int fprintf (int ,char*) ;
 scalar_t__ get_pageins () ;
 scalar_t__ geteuid () ;
 char* getlogin () ;
 int getopt (int,char**,char*) ;
 int getprogname () ;
 struct passwd* getpwuid (int ) ;
 int gettimeofday (int *,int *) ;
 int getuid () ;
 int kill (int,int ) ;
 int open (char*,int,int) ;
 int openlog (char*,int ,int) ;
 char* optarg ;
 scalar_t__ optind ;
 int pututxline (struct utmpx*) ;
 int reboot (int) ;
 int signal (int ,int ) ;
 int sleep (int) ;
 int stderr ;
 int strerror (int) ;
 int strlen (char const*) ;
 int * strstr (int ,char*) ;
 int sync () ;
 int syslog (int ,char*,char const*) ;
 int usage () ;
 int write (int,char const*,int) ;

int
main(int argc, char *argv[])
{
 struct utmpx utx;
 const struct passwd *pw;
 int ch, howto, i, fd, lflag, nflag, qflag, sverrno, Nflag;
 u_int pageins;
 const char *user, *kernel = ((void*)0);

 if (strstr(getprogname(), "halt") != ((void*)0)) {
  dohalt = 1;
  howto = RB_HALT;
 } else
  howto = 0;
 lflag = nflag = qflag = Nflag = 0;
 while ((ch = getopt(argc, argv, "cdk:lNnpqr")) != -1)
  switch(ch) {
  case 'c':
   howto |= RB_POWERCYCLE;
   break;
  case 'd':
   howto |= RB_DUMP;
   break;
  case 'k':
   kernel = optarg;
   break;
  case 'l':
   lflag = 1;
   break;
  case 'n':
   nflag = 1;
   howto |= RB_NOSYNC;
   break;
  case 'N':
   nflag = 1;
   Nflag = 1;
   break;
  case 'p':
   howto |= RB_POWEROFF;
   break;
  case 'q':
   qflag = 1;
   break;
  case 'r':
   howto |= RB_REROOT;
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;
 if (argc != 0)
  usage();

 if ((howto & (RB_DUMP | RB_HALT)) == (RB_DUMP | RB_HALT))
  errx(1, "cannot dump (-d) when halting; must reboot instead");
 if (Nflag && (howto & RB_NOSYNC) != 0)
  errx(1, "-N cannot be used with -n");
 if ((howto & RB_POWEROFF) && (howto & RB_POWERCYCLE))
  errx(1, "-c and -p cannot be used together");
 if ((howto & RB_REROOT) != 0 && howto != RB_REROOT)
  errx(1, "-r cannot be used with -c, -d, -n, or -p");
 if (geteuid()) {
  errno = EPERM;
  err(1, ((void*)0));
 }

 if (qflag) {
  reboot(howto);
  err(1, ((void*)0));
 }

 if (kernel != ((void*)0)) {
  fd = open("/boot/nextboot.conf", O_WRONLY | O_CREAT | O_TRUNC,
      0444);
  if (fd > -1) {
   (void)write(fd, "nextboot_enable=\"YES\"\n", 22);
   (void)write(fd, "kernel=\"", 8L);
   (void)write(fd, kernel, strlen(kernel));
   (void)write(fd, "\"\n", 2);
   close(fd);
  }
 }


 if (!lflag) {
  if ((user = getlogin()) == ((void*)0))
   user = (pw = getpwuid(getuid())) ?
       pw->pw_name : "???";
  if (dohalt) {
   openlog("halt", 0, LOG_AUTH | LOG_CONS);
   syslog(LOG_CRIT, "halted by %s", user);
  } else if (howto & RB_REROOT) {
   openlog("reroot", 0, LOG_AUTH | LOG_CONS);
   syslog(LOG_CRIT, "rerooted by %s", user);
  } else if (howto & RB_POWEROFF) {
   openlog("reboot", 0, LOG_AUTH | LOG_CONS);
   syslog(LOG_CRIT, "powered off by %s", user);
  } else if (howto & RB_POWERCYCLE) {
   openlog("reboot", 0, LOG_AUTH | LOG_CONS);
   syslog(LOG_CRIT, "power cycled by %s", user);
  } else {
   openlog("reboot", 0, LOG_AUTH | LOG_CONS);
   syslog(LOG_CRIT, "rebooted by %s", user);
  }
 }
 utx.ut_type = SHUTDOWN_TIME;
 gettimeofday(&utx.ut_tv, ((void*)0));
 pututxline(&utx);






 if (!nflag)
  sync();





 (void)signal(SIGHUP, SIG_IGN);
 (void)signal(SIGINT, SIG_IGN);
 (void)signal(SIGQUIT, SIG_IGN);
 (void)signal(SIGTERM, SIG_IGN);
 (void)signal(SIGTSTP, SIG_IGN);





 (void)signal(SIGPIPE, SIG_IGN);




 if (howto & RB_REROOT) {
  if (kill(1, SIGEMT) == -1)
   err(1, "SIGEMT init");

  return (0);
 }


 if (kill(1, SIGTSTP) == -1)
  err(1, "SIGTSTP init");


 if (kill(-1, SIGTERM) == -1 && errno != ESRCH)
  err(1, "SIGTERM processes");
 sleep(2);
 for (i = 0; i < 20; i++) {
  pageins = get_pageins();
  if (!nflag)
   sync();
  sleep(3);
  if (get_pageins() == pageins)
   break;
 }

 for (i = 1;; ++i) {
  if (kill(-1, SIGKILL) == -1) {
   if (errno == ESRCH)
    break;
   goto restart;
  }
  if (i > 5) {
   (void)fprintf(stderr,
       "WARNING: some process(es) wouldn't die\n");
   break;
  }
  (void)sleep(2 * i);
 }

 reboot(howto);


restart:
 sverrno = errno;
 errx(1, "%s%s", kill(1, SIGHUP) == -1 ? "(can't restart init): " : "",
     strerror(sverrno));

}
