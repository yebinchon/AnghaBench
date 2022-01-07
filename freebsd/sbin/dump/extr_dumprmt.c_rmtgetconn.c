
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int throughput ;
struct servent {scalar_t__ s_port; } ;
struct passwd {char* pw_name; } ;
typedef int size ;
typedef int on ;


 int IPPROTO_IP ;
 int IPPROTO_TCP ;
 int IPTOS_THROUGHPUT ;
 int IP_TOS ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 int TCP_NODELAY ;
 int TP_BSIZE ;
 int X_STARTUP ;
 char* _PATH_RMT ;
 int errfd ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 char* getenv (char*) ;
 struct passwd* getpwuid (int ) ;
 struct servent* getservbyname (char*,char*) ;
 int getuid () ;
 int msg (char*,...) ;
 int ntrec ;
 int okname (char*) ;
 int perror (char*) ;
 scalar_t__ rcmd (char**,int ,char*,char*,char const*,int *) ;
 scalar_t__ rmtape ;
 char* rmtpeer ;
 scalar_t__ setsockopt (scalar_t__,int ,int ,int*,int) ;
 int stderr ;
 char* strchr (char*,char) ;

void
rmtgetconn(void)
{
 char *cp;
 const char *rmt;
 static struct servent *sp = ((void*)0);
 static struct passwd *pwd = ((void*)0);
 char *tuser;
 int size;
 int throughput;
 int on;

 if (sp == ((void*)0)) {
  sp = getservbyname("shell", "tcp");
  if (sp == ((void*)0)) {
   msg("shell/tcp: unknown service\n");
   exit(X_STARTUP);
  }
  pwd = getpwuid(getuid());
  if (pwd == ((void*)0)) {
   msg("who are you?\n");
   exit(X_STARTUP);
  }
 }
 if ((cp = strchr(rmtpeer, '@')) != ((void*)0)) {
  tuser = rmtpeer;
  *cp = '\0';
  if (!okname(tuser))
   exit(X_STARTUP);
  rmtpeer = ++cp;
 } else
  tuser = pwd->pw_name;
 if ((rmt = getenv("RMT")) == ((void*)0))
  rmt = _PATH_RMT;
 msg("%s", "");
 rmtape = rcmd(&rmtpeer, (u_short)sp->s_port, pwd->pw_name,
        tuser, rmt, &errfd);
 if (rmtape < 0) {
  msg("login to %s as %s failed.\n", rmtpeer, tuser);
  return;
 }
 (void)fprintf(stderr, "Connection to %s established.\n", rmtpeer);
 size = ntrec * TP_BSIZE;
 if (size > 60 * 1024)
  size = 60 * 1024;

 size += 2 * 1024;
 while (size > TP_BSIZE &&
     setsockopt(rmtape, SOL_SOCKET, SO_SNDBUF, &size, sizeof (size)) < 0)
      size -= TP_BSIZE;
 (void)setsockopt(rmtape, SOL_SOCKET, SO_RCVBUF, &size, sizeof (size));
 throughput = IPTOS_THROUGHPUT;
 if (setsockopt(rmtape, IPPROTO_IP, IP_TOS,
     &throughput, sizeof(throughput)) < 0)
  perror("IP_TOS:IPTOS_THROUGHPUT setsockopt");
 on = 1;
 if (setsockopt(rmtape, IPPROTO_TCP, TCP_NODELAY, &on, sizeof (on)) < 0)
  perror("TCP_NODELAY setsockopt");
}
