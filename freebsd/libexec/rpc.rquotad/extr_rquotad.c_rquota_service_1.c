
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct svc_req {int rq_proc; } ;
typedef int SVCXPRT ;





 int exit (int ) ;
 scalar_t__ from_inetd ;
 int sendquota (struct svc_req*,int *) ;
 int svc_sendreply (int *,int ,char*) ;
 int svcerr_noproc (int *) ;
 int xdr_void ;

__attribute__((used)) static void
rquota_service_1(struct svc_req *request, SVCXPRT *transp)
{

 switch (request->rq_proc) {
 case 130:
  (void)svc_sendreply(transp, (xdrproc_t)xdr_void, (char *)((void*)0));
  break;
 case 128:
 case 129:
  sendquota(request, transp);
  break;
 default:
  svcerr_noproc(transp);
  break;
 }
 if (from_inetd)
  exit(0);
}
