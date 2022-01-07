
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct passwd {int pw_uid; } ;
typedef int socklen_t ;
typedef int sa ;
typedef int SVCXPRT ;


 int LOG_CONS ;
 int LOG_DAEMON ;
 int LOG_ERR ;
 int LOG_PID ;
 int SIGCHLD ;
 int WALLPROG ;
 int WALLVERS ;
 int exit (int) ;
 scalar_t__ from_inetd ;
 scalar_t__ geteuid () ;
 struct passwd* getpwnam (char*) ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 int getuid () ;
 int killkids ;
 int nodaemon ;
 int openlog (char*,int,int ) ;
 int possess () ;
 int rpcb_unset (int ,int ,int *) ;
 int setuid (int ) ;
 int signal (int ,int ) ;
 int strcmp (char*,char*) ;
 int svc_create (int ,int ,int ,char*) ;
 int svc_reg (int *,int ,int ,int ,int *) ;
 int svc_run () ;
 int * svc_tli_create (int ,int *,int *,int ,int ) ;
 int syslog (int ,char*,...) ;
 int usage () ;
 int wallprog_1 ;

int
main(int argc, char *argv[])
{
 SVCXPRT *transp;
 socklen_t salen;
 int ok;
 struct sockaddr_storage sa;

 if (argc == 2 && !strcmp(argv[1], "-n"))
  nodaemon = 1;
 if (argc != 1 && !nodaemon)
  usage();

 if (geteuid() == 0) {
  struct passwd *pep = getpwnam("nobody");
  if (pep)
   setuid(pep->pw_uid);
  else
   setuid(getuid());
 }




 salen = sizeof(sa);
        if (getsockname(0, (struct sockaddr *)&sa, &salen) < 0) {
                from_inetd = 0;
        }

        if (!from_inetd) {
                if (!nodaemon)
                        possess();

  (void)rpcb_unset(WALLPROG, WALLVERS, ((void*)0));
        }

 (void)signal(SIGCHLD, killkids);

 openlog("rpc.rwalld", LOG_CONS|LOG_PID, LOG_DAEMON);


 if (from_inetd) {
  transp = svc_tli_create(0, ((void*)0), ((void*)0), 0, 0);
  if (transp == ((void*)0)) {
   syslog(LOG_ERR, "couldn't create udp service.");
   exit(1);
  }
  ok = svc_reg(transp, WALLPROG, WALLVERS,
        wallprog_1, ((void*)0));
 } else
  ok = svc_create(wallprog_1,
    WALLPROG, WALLVERS, "udp");
 if (!ok) {
  syslog(LOG_ERR, "unable to register (WALLPROG, WALLVERS, %s)", (!from_inetd)?"udp":"(inetd)");
  exit(1);
 }
 svc_run();
 syslog(LOG_ERR, "svc_run returned");
 exit(1);
}
