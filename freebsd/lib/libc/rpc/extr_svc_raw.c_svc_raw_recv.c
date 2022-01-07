
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x_op; } ;
struct svc_raw_private {TYPE_1__ xdr_stream; } ;
struct rpc_msg {int dummy; } ;
typedef int bool_t ;
typedef TYPE_1__ XDR ;
typedef int SVCXPRT ;


 int FALSE ;
 int TRUE ;
 int XDR_DECODE ;
 int XDR_SETPOS (TYPE_1__*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct svc_raw_private* svc_raw_private ;
 int svcraw_lock ;
 int xdr_callmsg (TYPE_1__*,struct rpc_msg*) ;

__attribute__((used)) static bool_t
svc_raw_recv(SVCXPRT *xprt, struct rpc_msg *msg)
{
 struct svc_raw_private *srp;
 XDR *xdrs;

 mutex_lock(&svcraw_lock);
 srp = svc_raw_private;
 if (srp == ((void*)0)) {
  mutex_unlock(&svcraw_lock);
  return (FALSE);
 }
 mutex_unlock(&svcraw_lock);

 xdrs = &srp->xdr_stream;
 xdrs->x_op = XDR_DECODE;
 (void) XDR_SETPOS(xdrs, 0);
 if (! xdr_callmsg(xdrs, msg)) {
  return (FALSE);
 }
 return (TRUE);
}
