
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_10__ ;


typedef int (* xdrproc_t ) (TYPE_5__*,void*) ;
struct timeval {int dummy; } ;
struct TYPE_22__ {int * oa_base; } ;
struct TYPE_25__ {int (* proc ) (TYPE_5__*,void*) ;void* where; } ;
struct TYPE_26__ {TYPE_10__ ar_verf; TYPE_3__ ar_results; } ;
struct rpc_msg {TYPE_4__ acpted_rply; } ;
struct rpc_err {int re_status; } ;
struct TYPE_23__ {int rm_xid; } ;
struct TYPE_24__ {int mashl_callmsg; TYPE_1__ mashl_rpcmsg; } ;
struct TYPE_27__ {int x_op; } ;
struct clntraw_private {int mcnt; TYPE_2__ u; TYPE_5__ xdr_stream; } ;
typedef int rpcproc_t ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef TYPE_5__ XDR ;
struct TYPE_28__ {int cl_auth; } ;
typedef TYPE_7__ CLIENT ;


 int AUTH_MARSHALL (int ,TYPE_5__*) ;
 scalar_t__ AUTH_REFRESH (int ,struct rpc_msg*) ;
 int AUTH_VALIDATE (int ,TYPE_10__*) ;
 int FD_SETSIZE ;
 int RPC_AUTHERROR ;
 int RPC_CANTDECODERES ;
 int RPC_CANTENCODEARGS ;
 int RPC_FAILED ;
 int RPC_SUCCESS ;
 int XDR_DECODE ;
 int XDR_ENCODE ;
 void* XDR_FREE ;
 int XDR_GETPOS (TYPE_5__*) ;
 int XDR_PUTBYTES (TYPE_5__*,int ,int ) ;
 int XDR_PUTINT32 (TYPE_5__*,int *) ;
 int XDR_SETPOS (TYPE_5__*,int ) ;
 TYPE_10__ _null_auth ;
 int _seterr_reply (struct rpc_msg*,struct rpc_err*) ;
 int assert (int ) ;
 int clntraw_lock ;
 struct clntraw_private* clntraw_private ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_5__*,void*) ;
 int svc_getreq_common (int ) ;
 int xdr_opaque_auth (TYPE_5__*,TYPE_10__*) ;
 int xdr_replymsg (TYPE_5__*,struct rpc_msg*) ;

__attribute__((used)) static enum clnt_stat
clnt_raw_call(CLIENT *h, rpcproc_t proc, xdrproc_t xargs, void *argsp,
    xdrproc_t xresults, void *resultsp, struct timeval timeout)
{
 struct clntraw_private *clp = clntraw_private;
 XDR *xdrs = &clp->xdr_stream;
 struct rpc_msg msg;
 enum clnt_stat status;
 struct rpc_err error;

 assert(h != ((void*)0));

 mutex_lock(&clntraw_lock);
 if (clp == ((void*)0)) {
  mutex_unlock(&clntraw_lock);
  return (RPC_FAILED);
 }
 mutex_unlock(&clntraw_lock);

call_again:



 xdrs->x_op = XDR_ENCODE;
 XDR_SETPOS(xdrs, 0);
 clp->u.mashl_rpcmsg.rm_xid ++ ;
 if ((! XDR_PUTBYTES(xdrs, clp->u.mashl_callmsg, clp->mcnt)) ||
     (! XDR_PUTINT32(xdrs, &proc)) ||
     (! AUTH_MARSHALL(h->cl_auth, xdrs)) ||
     (! (*xargs)(xdrs, argsp))) {
  return (RPC_CANTENCODEARGS);
 }
 (void)XDR_GETPOS(xdrs);





 svc_getreq_common(FD_SETSIZE);




 xdrs->x_op = XDR_DECODE;
 XDR_SETPOS(xdrs, 0);
 msg.acpted_rply.ar_verf = _null_auth;
 msg.acpted_rply.ar_results.where = resultsp;
 msg.acpted_rply.ar_results.proc = xresults;
 if (! xdr_replymsg(xdrs, &msg)) {
  int op = xdrs->x_op;
  xdrs->x_op = XDR_FREE;
  xdr_replymsg(xdrs, &msg);
  xdrs->x_op = op;
  return (RPC_CANTDECODERES);
 }
 _seterr_reply(&msg, &error);
 status = error.re_status;

 if (status == RPC_SUCCESS) {
  if (! AUTH_VALIDATE(h->cl_auth, &msg.acpted_rply.ar_verf)) {
   status = RPC_AUTHERROR;
  }
 }
 else {
  if (AUTH_REFRESH(h->cl_auth, &msg))
   goto call_again;
 }

 if (status == RPC_SUCCESS) {
  if (! AUTH_VALIDATE(h->cl_auth, &msg.acpted_rply.ar_verf)) {
   status = RPC_AUTHERROR;
  }
  if (msg.acpted_rply.ar_verf.oa_base != ((void*)0)) {
   xdrs->x_op = XDR_FREE;
   (void)xdr_opaque_auth(xdrs, &(msg.acpted_rply.ar_verf));
  }
 }

 return (status);
}
