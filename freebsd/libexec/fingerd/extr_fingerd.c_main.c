
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int ss ;
typedef int socklen_t ;
typedef int rhost ;
typedef int line ;
typedef int FILE ;


 int ENTRIES ;
 int EOF ;
 int IPPROTO_TCP ;
 int LOG_CONS ;
 int LOG_DAEMON ;
 int LOG_NOTICE ;
 int LOG_PID ;
 int MAXHOSTNAMELEN ;
 char* MSG ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int TCP_NOPUSH ;
 char* _PATH_FINGER ;
 int _exit (int) ;
 int blacklist (int,int ,char*) ;
 int close (int) ;
 int dup2 (int,int) ;
 int errno ;
 int execv (char*,char**) ;
 int exit (int) ;
 int * fdopen (int,char*) ;
 int fgets (char*,int,int ) ;
 int fprintf (int ,char*,...) ;
 int getc (int *) ;
 int getopt (int,char**,char*) ;
 scalar_t__ getpeername (int ,struct sockaddr*,int*) ;
 int logerr (char*,...) ;
 char* malloc (int) ;
 char* memchr (char*,int ,int) ;
 int memcpy (char*,char*,int) ;
 int openlog (char*,int,int ) ;
 char* optarg ;
 scalar_t__ opterr ;
 int optopt ;
 scalar_t__ pipe (int*) ;
 int putchar (int) ;
 int puts (char*) ;
 int realhostname_sa (char*,int,struct sockaddr*,int) ;
 int setenv (char*,char*,int) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int stderr ;
 int stdin ;
 scalar_t__ strchr (char*,char) ;
 char* strdup (char*) ;
 int strerror (int ) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 char* strtok (char*,char*) ;
 int syslog (int ,char*,char*,char*) ;
 int vfork () ;
 int write (int,char*,int ) ;

int
main(int argc, char *argv[])
{
 FILE *fp;
 int ch;
 char *lp;
 struct sockaddr_storage ss;
 socklen_t sval;
 int p[2], debug, kflag, logging, pflag, secure;

 char **ap, *av[50 + 1], **comp, line[1024], *prog;
 char rhost[MAXHOSTNAMELEN];

 prog = _PATH_FINGER;
 debug = logging = kflag = pflag = secure = 0;
 openlog("fingerd", LOG_PID | LOG_CONS, LOG_DAEMON);
 opterr = 0;
 while ((ch = getopt(argc, argv, "dklp:s")) != -1)
  switch (ch) {
  case 'd':
   debug = 1;
   break;
  case 'k':
   kflag = 1;
   break;
  case 'l':
   logging = 1;
   break;
  case 'p':
   prog = optarg;
   pflag = 1;
   break;
  case 's':
   secure = 1;
   break;
  case '?':
  default:
   logerr("illegal option -- %c", optopt);
  }




 if (!debug) {
  int one = 1;
  if (setsockopt(STDOUT_FILENO, IPPROTO_TCP, TCP_NOPUSH, &one,
          sizeof one) < 0) {
   logerr("setsockopt(TCP_NOPUSH) failed: %m");
  }
 }

 if (!fgets(line, sizeof(line), stdin))
  exit(1);

 if (!debug && (logging || pflag)) {
  sval = sizeof(ss);
  if (getpeername(0, (struct sockaddr *)&ss, &sval) < 0)
   logerr("getpeername: %s", strerror(errno));
  realhostname_sa(rhost, sizeof rhost - 1,
    (struct sockaddr *)&ss, sval);
  rhost[sizeof(rhost) - 1] = '\0';
  if (pflag)
   setenv("FINGERD_REMOTE_HOST", rhost, 1);
 }

 if (logging) {
  char *t;
  char *end;

  end = memchr(line, 0, sizeof(line));
  if (end == ((void*)0)) {
   if ((t = malloc(sizeof(line) + 1)) == ((void*)0))
    logerr("malloc: %s", strerror(errno));
   memcpy(t, line, sizeof(line));
   t[sizeof(line)] = 0;
  } else {
   if ((t = strdup(line)) == ((void*)0))
    logerr("strdup: %s", strerror(errno));
  }
  for (end = t; *end; end++)
   if (*end == '\n' || *end == '\r')
    *end = ' ';
  syslog(LOG_NOTICE, "query from %s: `%s'", rhost, t);
 }

 comp = &av[2];
 av[3] = "--";
 if (kflag)
  *comp-- = "-k";
 for (lp = line, ap = &av[4];;) {
  *ap = strtok(lp, " \t\r\n");
  if (!*ap) {
   if (secure && ap == &av[4]) {



    puts("must provide username\r\n");
    exit(1);
   }
   break;
  }
  if (secure && strchr(*ap, '@')) {



   puts("forwarding service denied\r\n");
   exit(1);
  }


  if ((*ap)[0] == '/' && ((*ap)[1] == 'W' || (*ap)[1] == 'w')) {
   *comp-- = "-l";
  }
  else if (++ap == av + 50) {
   *ap = ((void*)0);
   break;
  }
  lp = ((void*)0);
 }

 if ((lp = strrchr(prog, '/')) != ((void*)0))
  *comp = ++lp;
 else
  *comp = prog;
 if (pipe(p) < 0)
  logerr("pipe: %s", strerror(errno));

 if (debug) {
  fprintf(stderr, "%s", prog);
  for (ap = comp; *ap != ((void*)0); ++ap)
   fprintf(stderr, " %s", *ap);
  fprintf(stderr, "\n");
 }

 switch(vfork()) {
 case 0:
  (void)close(p[0]);
  if (p[1] != STDOUT_FILENO) {
   (void)dup2(p[1], STDOUT_FILENO);
   (void)close(p[1]);
  }
  dup2(STDOUT_FILENO, STDERR_FILENO);




  execv(prog, comp);
  write(STDERR_FILENO, prog, strlen(prog));

  write(STDERR_FILENO, ": cannot execute\n", strlen(": cannot execute\n"));

  _exit(1);
 case -1:
  logerr("fork: %s", strerror(errno));
 }
 (void)close(p[1]);
 if (!(fp = fdopen(p[0], "r")))
  logerr("fdopen: %s", strerror(errno));
 while ((ch = getc(fp)) != EOF) {
  if (ch == '\n')
   putchar('\r');
  putchar(ch);
 }
 exit(0);
}
