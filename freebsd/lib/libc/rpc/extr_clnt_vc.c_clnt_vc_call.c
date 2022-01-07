
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_7__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_20__ ;
typedef struct TYPE_35__ TYPE_1__ ;
typedef struct TYPE_34__ TYPE_18__ ;
typedef struct TYPE_33__ TYPE_12__ ;


typedef scalar_t__ (* xdrproc_t ) (TYPE_5__*,void*) ;
typedef int uint32_t ;
typedef scalar_t__ u_int32_t ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_33__ {int * oa_base; } ;
struct TYPE_38__ {scalar_t__ (* proc ) (TYPE_5__*,void*) ;int * where; } ;
struct TYPE_39__ {TYPE_12__ ar_verf; TYPE_3__ ar_results; } ;
struct rpc_msg {scalar_t__ rm_xid; TYPE_4__ acpted_rply; } ;
struct TYPE_34__ {int re_status; int re_why; } ;
struct TYPE_37__ {scalar_t__ ct_mcalli; int * ct_mcallc; } ;
struct TYPE_40__ {int x_op; } ;
struct ct_data {size_t ct_fd; size_t ct_mpos; TYPE_18__ ct_error; TYPE_2__ ct_u; struct timeval ct_wait; int ct_waitset; TYPE_5__ ct_xdrs; } ;
typedef int sigset_t ;
typedef int rpcproc_t ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef scalar_t__ bool_t ;
typedef TYPE_5__ XDR ;
struct TYPE_41__ {TYPE_20__* cl_auth; scalar_t__ cl_private; } ;
struct TYPE_35__ {scalar_t__ oa_flavor; } ;
struct TYPE_36__ {TYPE_1__ ah_cred; } ;
typedef TYPE_7__ CLIENT ;


 int AUTH_INVALIDRESP ;
 int AUTH_MARSHALL (TYPE_20__*,TYPE_5__*) ;
 scalar_t__ AUTH_REFRESH (TYPE_20__*,struct rpc_msg*) ;
 int AUTH_VALIDATE (TYPE_20__*,TYPE_12__*) ;
 scalar_t__ FALSE ;
 scalar_t__ RPCSEC_GSS ;
 scalar_t__ RPC_AUTHERROR ;
 scalar_t__ RPC_CANTDECODERES ;
 void* RPC_CANTENCODEARGS ;
 int RPC_CANTSEND ;
 scalar_t__ RPC_SUCCESS ;
 int RPC_TIMEDOUT ;
 int SIG_SETMASK ;
 scalar_t__ TRUE ;
 int XDR_DECODE ;
 int XDR_ENCODE ;
 int XDR_FREE ;
 int XDR_PUTBYTES (TYPE_5__*,int *,size_t) ;
 int XDR_PUTINT32 (TYPE_5__*,int *) ;
 scalar_t__ __isthreaded ;
 scalar_t__ __rpc_gss_unwrap (TYPE_20__*,TYPE_5__*,scalar_t__ (*) (TYPE_5__*,void*),void*) ;
 int __rpc_gss_wrap (TYPE_20__*,int *,int,TYPE_5__*,scalar_t__ (*) (TYPE_5__*,void*),void*) ;
 TYPE_12__ _null_auth ;
 int _seterr_reply (struct rpc_msg*,TYPE_18__*) ;
 int assert (int ) ;
 int clnt_fd_lock ;
 int cond_wait (int *,int *) ;
 int htonl (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ ntohl (scalar_t__) ;
 int release_fd_lock (size_t,int ) ;
 int sigfillset (int *) ;
 scalar_t__ stub1 (TYPE_5__*,void*) ;
 scalar_t__ stub2 (TYPE_5__*,void*) ;
 int thr_sigsetmask (int ,int *,int *) ;
 scalar_t__ time_not_ok (struct timeval*) ;
 int * vc_cv ;
 int* vc_fd_locks ;
 int xdr_opaque_auth (TYPE_5__*,TYPE_12__*) ;
 int xdr_replymsg (TYPE_5__*,struct rpc_msg*) ;
 scalar_t__ xdr_void ;
 int xdrrec_endofrecord (TYPE_5__*,scalar_t__) ;
 int xdrrec_skiprecord (TYPE_5__*) ;

__attribute__((used)) static enum clnt_stat
clnt_vc_call(CLIENT *cl, rpcproc_t proc, xdrproc_t xdr_args, void *args_ptr,
    xdrproc_t xdr_results, void *results_ptr, struct timeval timeout)
{
 struct ct_data *ct = (struct ct_data *) cl->cl_private;
 XDR *xdrs = &(ct->ct_xdrs);
 struct rpc_msg reply_msg;
 u_int32_t x_id;
 u_int32_t *msg_x_id = &ct->ct_u.ct_mcalli;
 bool_t shipnow;
 int refreshes = 2;
 sigset_t mask, newmask;
 int rpc_lock_value;
 bool_t reply_stat;

 assert(cl != ((void*)0));

 sigfillset(&newmask);
 thr_sigsetmask(SIG_SETMASK, &newmask, &mask);
 mutex_lock(&clnt_fd_lock);
 while (vc_fd_locks[ct->ct_fd])
  cond_wait(&vc_cv[ct->ct_fd], &clnt_fd_lock);
 if (__isthreaded)
                rpc_lock_value = 1;
        else
                rpc_lock_value = 0;
 vc_fd_locks[ct->ct_fd] = rpc_lock_value;
 mutex_unlock(&clnt_fd_lock);
 if (!ct->ct_waitset) {

  if (time_not_ok(&timeout) == FALSE)
   ct->ct_wait = timeout;
 }

 shipnow =
     (xdr_results == ((void*)0) && timeout.tv_sec == 0
     && timeout.tv_usec == 0) ? FALSE : TRUE;

call_again:
 xdrs->x_op = XDR_ENCODE;
 ct->ct_error.re_status = RPC_SUCCESS;
 x_id = ntohl(--(*msg_x_id));

 if (cl->cl_auth->ah_cred.oa_flavor != RPCSEC_GSS) {
  if ((! XDR_PUTBYTES(xdrs, ct->ct_u.ct_mcallc, ct->ct_mpos)) ||
      (! XDR_PUTINT32(xdrs, &proc)) ||
      (! AUTH_MARSHALL(cl->cl_auth, xdrs)) ||
      (! (*xdr_args)(xdrs, args_ptr))) {
   if (ct->ct_error.re_status == RPC_SUCCESS)
    ct->ct_error.re_status = RPC_CANTENCODEARGS;
   (void)xdrrec_endofrecord(xdrs, TRUE);
   release_fd_lock(ct->ct_fd, mask);
   return (ct->ct_error.re_status);
  }
 } else {
  *(uint32_t *) &ct->ct_u.ct_mcallc[ct->ct_mpos] = htonl(proc);
  if (! __rpc_gss_wrap(cl->cl_auth, ct->ct_u.ct_mcallc,
   ct->ct_mpos + sizeof(uint32_t),
   xdrs, xdr_args, args_ptr)) {
   if (ct->ct_error.re_status == RPC_SUCCESS)
    ct->ct_error.re_status = RPC_CANTENCODEARGS;
   (void)xdrrec_endofrecord(xdrs, TRUE);
   release_fd_lock(ct->ct_fd, mask);
   return (ct->ct_error.re_status);
  }
 }
 if (! xdrrec_endofrecord(xdrs, shipnow)) {
  release_fd_lock(ct->ct_fd, mask);
  return (ct->ct_error.re_status = RPC_CANTSEND);
 }
 if (! shipnow) {
  release_fd_lock(ct->ct_fd, mask);
  return (RPC_SUCCESS);
 }



 if (timeout.tv_sec == 0 && timeout.tv_usec == 0) {
  release_fd_lock(ct->ct_fd, mask);
  return(ct->ct_error.re_status = RPC_TIMEDOUT);
 }





 xdrs->x_op = XDR_DECODE;
 while (TRUE) {
  reply_msg.acpted_rply.ar_verf = _null_auth;
  reply_msg.acpted_rply.ar_results.where = ((void*)0);
  reply_msg.acpted_rply.ar_results.proc = (xdrproc_t)xdr_void;
  if (! xdrrec_skiprecord(xdrs)) {
   release_fd_lock(ct->ct_fd, mask);
   return (ct->ct_error.re_status);
  }

  if (! xdr_replymsg(xdrs, &reply_msg)) {
   if (ct->ct_error.re_status == RPC_SUCCESS)
    continue;
   release_fd_lock(ct->ct_fd, mask);
   return (ct->ct_error.re_status);
  }
  if (reply_msg.rm_xid == x_id)
   break;
 }




 _seterr_reply(&reply_msg, &(ct->ct_error));
 if (ct->ct_error.re_status == RPC_SUCCESS) {
  if (! AUTH_VALIDATE(cl->cl_auth,
      &reply_msg.acpted_rply.ar_verf)) {
   ct->ct_error.re_status = RPC_AUTHERROR;
   ct->ct_error.re_why = AUTH_INVALIDRESP;
  } else {
   if (cl->cl_auth->ah_cred.oa_flavor != RPCSEC_GSS) {
    reply_stat = (*xdr_results)(xdrs, results_ptr);
   } else {
    reply_stat = __rpc_gss_unwrap(cl->cl_auth,
        xdrs, xdr_results, results_ptr);
   }
   if (! reply_stat) {
    if (ct->ct_error.re_status == RPC_SUCCESS)
     ct->ct_error.re_status =
      RPC_CANTDECODERES;
   }
  }

  if (reply_msg.acpted_rply.ar_verf.oa_base != ((void*)0)) {
   xdrs->x_op = XDR_FREE;
   (void)xdr_opaque_auth(xdrs,
       &(reply_msg.acpted_rply.ar_verf));
  }
 }
 else {

  if (refreshes-- && AUTH_REFRESH(cl->cl_auth, &reply_msg))
   goto call_again;
 }
 release_fd_lock(ct->ct_fd, mask);
 return (ct->ct_error.re_status);
}
