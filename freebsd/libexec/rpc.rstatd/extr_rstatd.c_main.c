
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int from ;
typedef int SVCXPRT ;


 int LOG_CONS ;
 int LOG_DAEMON ;
 int LOG_ERR ;
 int LOG_PID ;
 int RSTATPROG ;
 int RSTATVERS_ORIG ;
 int RSTATVERS_SWTCH ;
 int RSTATVERS_TIME ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int atoi (char*) ;
 int cleanup ;
 int closedown ;
 int daemon (int ,int ) ;
 int exit (int) ;
 scalar_t__ from_inetd ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 int openlog (char*,int,int ) ;
 int rpcb_unset (int ,int ,int *) ;
 int rstat_service ;
 int signal (int ,int ) ;
 int svc_create (int ,int ,int ,char*) ;
 int svc_reg (int *,int ,int ,int ,int *) ;
 int svc_run () ;
 int * svc_tli_create (int ,int *,int *,int ,int ) ;
 int syslog (int ,char*,...) ;

int
main(int argc, char *argv[])
{
 SVCXPRT *transp;
 int ok;
 struct sockaddr_storage from;
 socklen_t fromlen;

        if (argc == 2)
                closedown = atoi(argv[1]);
        if (closedown <= 0)
                closedown = 20;




 fromlen = sizeof(from);
        if (getsockname(0, (struct sockaddr *)&from, &fromlen) < 0) {
                from_inetd = 0;
        }

        if (!from_inetd) {
                daemon(0, 0);

                (void)rpcb_unset(RSTATPROG, RSTATVERS_TIME, ((void*)0));
                (void)rpcb_unset(RSTATPROG, RSTATVERS_SWTCH, ((void*)0));
                (void)rpcb_unset(RSTATPROG, RSTATVERS_ORIG, ((void*)0));

  (void) signal(SIGINT, cleanup);
  (void) signal(SIGTERM, cleanup);
  (void) signal(SIGHUP, cleanup);
        }

        openlog("rpc.rstatd", LOG_CONS|LOG_PID, LOG_DAEMON);

 if (from_inetd) {
  transp = svc_tli_create(0, ((void*)0), ((void*)0), 0, 0);
  if (transp == ((void*)0)) {
   syslog(LOG_ERR, "cannot create udp service.");
   exit(1);
  }
  ok = svc_reg(transp, RSTATPROG, RSTATVERS_TIME,
        rstat_service, ((void*)0));
 } else
  ok = svc_create(rstat_service,
    RSTATPROG, RSTATVERS_TIME, "udp");
 if (!ok) {
  syslog(LOG_ERR, "unable to register (RSTATPROG, RSTATVERS_TIME, %s)", (!from_inetd)?"udp":"(inetd)");
    exit(1);
 }
 if (from_inetd)
  ok = svc_reg(transp, RSTATPROG, RSTATVERS_SWTCH,
        rstat_service, ((void*)0));
 else
  ok = svc_create(rstat_service,
    RSTATPROG, RSTATVERS_SWTCH, "udp");
 if (!ok) {
  syslog(LOG_ERR, "unable to register (RSTATPROG, RSTATVERS_SWTCH, %s)", (!from_inetd)?"udp":"(inetd)");
    exit(1);
 }
 if (from_inetd)
  ok = svc_reg(transp, RSTATPROG, RSTATVERS_ORIG,
        rstat_service, ((void*)0));
 else
  ok = svc_create(rstat_service,
    RSTATPROG, RSTATVERS_ORIG, "udp");
 if (!ok) {
  syslog(LOG_ERR, "unable to register (RSTATPROG, RSTATVERS_ORIG, %s)", (!from_inetd)?"udp":"(inetd)");
    exit(1);
 }

        svc_run();
 syslog(LOG_ERR, "svc_run returned");
 exit(1);
}
