
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rpc_msg {int rm_xid; } ;
struct TYPE_7__ {int x_op; } ;
struct cf_conn {int strm_stat; int x_id; scalar_t__ nonblock; TYPE_1__ xdrs; } ;
typedef int bool_t ;
typedef TYPE_1__ XDR ;
struct TYPE_8__ {scalar_t__ xp_p1; } ;
typedef TYPE_2__ SVCXPRT ;


 int FALSE ;
 int TRUE ;
 int XDR_DECODE ;
 int XPRT_DIED ;
 int __xdrrec_getrec (TYPE_1__*,int *,int ) ;
 int assert (int ) ;
 scalar_t__ xdr_callmsg (TYPE_1__*,struct rpc_msg*) ;
 int xdrrec_skiprecord (TYPE_1__*) ;

__attribute__((used)) static bool_t
svc_vc_recv(SVCXPRT *xprt, struct rpc_msg *msg)
{
 struct cf_conn *cd;
 XDR *xdrs;

 assert(xprt != ((void*)0));
 assert(msg != ((void*)0));

 cd = (struct cf_conn *)(xprt->xp_p1);
 xdrs = &(cd->xdrs);

 if (cd->nonblock) {
  if (!__xdrrec_getrec(xdrs, &cd->strm_stat, TRUE))
   return FALSE;
 } else {
  (void)xdrrec_skiprecord(xdrs);
 }

 xdrs->x_op = XDR_DECODE;
 if (xdr_callmsg(xdrs, msg)) {
  cd->x_id = msg->rm_xid;
  return (TRUE);
 }
 cd->strm_stat = XPRT_DIED;
 return (FALSE);
}
