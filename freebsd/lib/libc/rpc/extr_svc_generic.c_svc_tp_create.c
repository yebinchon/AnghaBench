
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netconfig {int nc_netid; } ;
typedef scalar_t__ rpcvers_t ;
typedef scalar_t__ rpcprog_t ;
typedef int SVCXPRT ;


 scalar_t__ FALSE ;
 int RPC_ANYFD ;
 int SVC_DESTROY (int *) ;
 int rpcb_unset (scalar_t__,scalar_t__,struct netconfig*) ;
 scalar_t__ svc_reg (int *,scalar_t__,scalar_t__,void (*) (struct svc_req*,int *),struct netconfig const*) ;
 int * svc_tli_create (int ,struct netconfig const*,int *,int ,int ) ;
 int warnx (char*,unsigned int,unsigned int,...) ;

SVCXPRT *
svc_tp_create(void (*dispatch)(struct svc_req *, SVCXPRT *),
    rpcprog_t prognum, rpcvers_t versnum, const struct netconfig *nconf)
{
 SVCXPRT *xprt;

 if (nconf == ((void*)0)) {
  warnx(
 "svc_tp_create: invalid netconfig structure for prog %u vers %u",
    (unsigned)prognum, (unsigned)versnum);
  return (((void*)0));
 }
 xprt = svc_tli_create(RPC_ANYFD, nconf, ((void*)0), 0, 0);
 if (xprt == ((void*)0)) {
  return (((void*)0));
 }

 (void) rpcb_unset(prognum, versnum, (struct netconfig *) nconf);
 if (svc_reg(xprt, prognum, versnum, dispatch, nconf) == FALSE) {
  warnx(
  "svc_tp_create: Could not register prog %u vers %u on %s",
    (unsigned)prognum, (unsigned)versnum,
    nconf->nc_netid);
  SVC_DESTROY(xprt);
  return (((void*)0));
 }
 return (xprt);
}
