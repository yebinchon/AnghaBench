
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
typedef int fd_set ;
typedef int RMPCONN ;
typedef int FILE ;
typedef int CLIENT ;


 scalar_t__ BootAny ;
 char* BootDir ;
 char* BpfGetIntfName (char**) ;
 int BpfOpen () ;
 scalar_t__ BpfRead (int *,int) ;
 char* ConfigFile ;
 int DIR_RCVD ;
 int * DbgFp ;
 scalar_t__ DebugFlg ;
 int DebugOff (int ) ;
 int DebugOn (int ) ;
 char* DfltConfig ;
 int DispPkt (int *,int ) ;
 int DoTimeout () ;
 scalar_t__ EINTR ;
 char* EnetStr (int *) ;
 int Exit (int ) ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ GetBootFiles () ;
 char* IntfName ;
 int LOG_DAEMON ;
 int LOG_ERR ;
 int LOG_INFO ;
 int LOG_NOTICE ;
 int LOG_PID ;
 int LOG_WARNING ;
 int MAXHOSTNAMELEN ;
 char* MyHost ;
 scalar_t__ MyPid ;
 scalar_t__ ParseConfig () ;
 char* PidFile ;
 int ProcessPacket (int *,int *) ;
 int RMP_TIMEOUT ;
 int ReConfig (int ) ;
 int * RmpConns ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SIG_IGN (int ) ;
 scalar_t__ chdir (char*) ;
 int close (int) ;
 scalar_t__ daemon (int ,int ) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,int) ;
 int getdtablesize () ;
 scalar_t__ gethostname (char*,int) ;
 int getopt (int,char**,char*) ;
 scalar_t__ getpid () ;
 int openlog (char*,int ,int ) ;
 char* optarg ;
 int optind ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int sigblock (int ) ;
 int sigmask (int ) ;
 int signal (int ,int (*) (int )) ;
 int sigsetmask (int) ;
 int * stderr ;
 int * stdin ;
 int * stdout ;
 int syslog (int ,char*,...) ;
 int usage () ;
 int warnx (char*,char*) ;

int
main(int argc, char *argv[])
{
 int c, fd, omask, maxfds;
 fd_set rset;






 {
  int i, nfds = getdtablesize();

  for (i = 0; i < nfds; i++)
   if (i != fileno(stdin) && i != fileno(stdout) &&
       i != fileno(stderr))
    (void) close(i);
 }




 while ((c = getopt(argc, argv, "adi:")) != -1)
  switch(c) {
      case 'a':
   BootAny++;
   break;
      case 'd':
   DebugFlg++;
   break;
      case 'i':
   IntfName = optarg;
   break;
      default:
   usage();
  }
 for (; optind < argc; optind++) {
  if (ConfigFile == ((void*)0))
   ConfigFile = argv[optind];
  else {
   warnx("too many config files (`%s' ignored)",
       argv[optind]);
  }
 }

 if (ConfigFile == ((void*)0))
  ConfigFile = DfltConfig;

 if (DebugFlg) {
  DbgFp = stdout;

  (void) signal(SIGUSR1, SIG_IGN);
  (void) signal(SIGUSR2, SIG_IGN);
  (void) fclose(stderr);
 } else {
  if (daemon(0, 0))
   err(1, "can't detach from terminal");

  (void) signal(SIGUSR1, DebugOn);
  (void) signal(SIGUSR2, DebugOff);
 }

 openlog("rbootd", LOG_PID, LOG_DAEMON);
 if (IntfName == ((void*)0)) {
  char *errmsg;

  if ((IntfName = BpfGetIntfName(&errmsg)) == ((void*)0)) {

   syslog(LOG_NOTICE, "restarted (?\?)");

   syslog(LOG_ERR, "%s", errmsg);
   Exit(0);
  }
 }

 syslog(LOG_NOTICE, "restarted (%s)", IntfName);

 (void) signal(SIGHUP, ReConfig);
 (void) signal(SIGINT, Exit);
 (void) signal(SIGTERM, Exit);




 if (gethostname(MyHost, MAXHOSTNAMELEN - 1) < 0) {
  syslog(LOG_ERR, "gethostname: %m");
  Exit(0);
 }
 MyHost[MAXHOSTNAMELEN - 1] = '\0';

 MyPid = getpid();




 {
  FILE *fp;

  if ((fp = fopen(PidFile, "w")) != ((void*)0)) {
   (void) fprintf(fp, "%d\n", (int) MyPid);
   (void) fclose(fp);
  } else {
   syslog(LOG_WARNING, "fopen: failed (%s)", PidFile);
  }
 }





 if (chdir(BootDir) < 0) {
  syslog(LOG_ERR, "chdir: %m (%s)", BootDir);
  Exit(0);
 }




 omask = sigblock(sigmask(SIGHUP));
 if (GetBootFiles() == 0)
  Exit(0);
 if (ParseConfig() == 0)
  Exit(0);






 fd = BpfOpen();

 (void) sigsetmask(omask);





 maxfds = fd + 1;
 FD_ZERO(&rset);
 FD_SET(fd, &rset);
 for (;;) {
  struct timeval timeout;
  fd_set r;
  int nsel;

  r = rset;

  if (RmpConns == ((void*)0)) {
   nsel = select(maxfds, &r, ((void*)0), ((void*)0), ((void*)0));
  } else {
   timeout.tv_sec = RMP_TIMEOUT;
   timeout.tv_usec = 0;
   nsel = select(maxfds, &r, ((void*)0), ((void*)0), &timeout);
  }

  if (nsel < 0) {
   if (errno == EINTR)
    continue;
   syslog(LOG_ERR, "select: %m");
   Exit(0);
  } else if (nsel == 0) {
   DoTimeout();
   continue;
  }

  if (FD_ISSET(fd, &r)) {
   RMPCONN rconn;
   CLIENT *client, *FindClient();
   int doread = 1;

   while (BpfRead(&rconn, doread)) {
    doread = 0;

    if (DbgFp != ((void*)0))
     DispPkt(&rconn,DIR_RCVD);

    omask = sigblock(sigmask(SIGHUP));
    if (BootAny) {
     client = ((void*)0);
    } else if ((client=FindClient(&rconn))==((void*)0)) {
     syslog(LOG_INFO,
            "%s: boot packet ignored",
            EnetStr(&rconn));
     (void) sigsetmask(omask);
     continue;
    }

    ProcessPacket(&rconn,client);

    (void) sigsetmask(omask);
   }
  }
 }
}
