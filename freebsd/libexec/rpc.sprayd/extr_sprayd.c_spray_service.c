
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xdrproc_t ;
struct timeval {int tv_usec; int tv_sec; } ;
struct svc_req {int rq_proc; } ;
struct TYPE_4__ {int usec; int sec; } ;
struct TYPE_5__ {TYPE_1__ clock; int counter; } ;
typedef TYPE_2__ spraycumul ;
typedef int SVCXPRT ;


 int LOG_WARNING ;




 int gettimeofday (struct timeval*,int ) ;
 int svc_sendreply (int *,int ,TYPE_2__*) ;
 int svcerr_noproc (int *) ;
 int svcerr_systemerr (int *) ;
 int syslog (int ,char*) ;
 int timersub (struct timeval*,struct timeval*,struct timeval*) ;
 scalar_t__ xdr_spraycumul ;
 scalar_t__ xdr_void ;

__attribute__((used)) static void
spray_service(struct svc_req *rqstp, SVCXPRT *transp)
{
 static spraycumul scum;
 static struct timeval clear, get;

 switch (rqstp->rq_proc) {
 case 130:
  scum.counter = 0;
  (void)gettimeofday(&clear, 0);


 case 131:
  (void)svc_sendreply(transp, (xdrproc_t)xdr_void, ((void*)0));
  return;

 case 128:
  scum.counter++;
  return;

 case 129:
  (void)gettimeofday(&get, 0);
  timersub(&get, &clear, &get);
  scum.clock.sec = get.tv_sec;
  scum.clock.usec = get.tv_usec;
  break;

 default:
  svcerr_noproc(transp);
  return;
 }

 if (!svc_sendreply(transp, (xdrproc_t)xdr_spraycumul, &scum)) {
  svcerr_systemerr(transp);
  syslog(LOG_WARNING, "bad svc_sendreply");
 }
}
