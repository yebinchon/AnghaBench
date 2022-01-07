
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int from ;
typedef int SVCXPRT ;


 int EXT_RQUOTAVERS ;
 int LOG_CONS ;
 int LOG_DAEMON ;
 int LOG_ERR ;
 int LOG_PID ;
 int RQUOTAPROG ;
 int RQUOTAVERS ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int cleanup ;
 int daemon (int ,int ) ;
 int debug ;
 int exit (int) ;
 scalar_t__ from_inetd ;
 int getopt (int,char**,char*) ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 int openlog (char*,int,int ) ;
 int rpcb_unset (int ,int,int *) ;
 int rquota_service_1 ;
 int rquota_service_2 ;
 int signal (int ,int ) ;
 int svc_create (int ,int ,int,char*) ;
 int svc_reg (int *,int ,int,int ,int *) ;
 int svc_run () ;
 int * svc_tli_create (int ,int *,int *,int ,int ) ;
 int syslog (int ,char*,...) ;

int
main(int argc, char **argv)
{
 SVCXPRT *transp;
 int ok;
 struct sockaddr_storage from;
 socklen_t fromlen;
 int vers;
 int ch;

 while ((ch = getopt(argc, argv, "d")) != -1) {
  switch (ch) {
  case 'd':
   debug++;
   break;
  default:
   break;
  }
 }

 fromlen = sizeof(from);
 if (getsockname(0, (struct sockaddr *)&from, &fromlen) < 0)
  from_inetd = 0;

 if (!from_inetd) {
  if (!debug)
   daemon(0, 0);
  (void)rpcb_unset(RQUOTAPROG, RQUOTAVERS, ((void*)0));
  (void)signal(SIGINT, cleanup);
  (void)signal(SIGTERM, cleanup);
  (void)signal(SIGHUP, cleanup);
 }

 openlog("rpc.rquotad", LOG_CONS|LOG_PID, LOG_DAEMON);


 if (from_inetd) {
  transp = svc_tli_create(0, ((void*)0), ((void*)0), 0, 0);
  if (transp == ((void*)0)) {
   syslog(LOG_ERR, "couldn't create udp service.");
   exit(1);
  }
  vers = RQUOTAVERS;
  ok = svc_reg(transp, RQUOTAPROG, RQUOTAVERS,
      rquota_service_1, ((void*)0));
  if (ok) {
   vers = EXT_RQUOTAVERS;
   ok = svc_reg(transp, RQUOTAPROG, EXT_RQUOTAVERS,
         rquota_service_2, ((void*)0));
  }
 } else {
  vers = RQUOTAVERS;
  ok = svc_create(rquota_service_1,
      RQUOTAPROG, RQUOTAVERS, "udp");
  if (ok) {
   vers = EXT_RQUOTAVERS;
   ok = svc_create(rquota_service_2,
     RQUOTAPROG, EXT_RQUOTAVERS, "udp");

  }
 }
 if (!ok) {
  syslog(LOG_ERR,
      "unable to register (RQUOTAPROG, %s, %s)",
         vers == RQUOTAVERS ? "RQUOTAVERS" : "EXT_RQUOTAVERS",
         from_inetd ? "(inetd)" : "udp");
  exit(1);
 }

 svc_run();
 syslog(LOG_ERR, "svc_run returned");
 exit(1);
}
