
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* oa_base; } ;
struct svc_req {char* rq_clntcred; scalar_t__ rq_prog; scalar_t__ rq_vers; TYPE_2__ rq_cred; int rq_proc; int * rq_xprt; } ;
struct svc_callout {scalar_t__ sc_prog; scalar_t__ sc_vers; int (* sc_dispatch ) (struct svc_req*,int *) ;struct svc_callout* sc_next; } ;
struct TYPE_4__ {char* oa_base; } ;
struct TYPE_6__ {scalar_t__ cb_prog; scalar_t__ cb_vers; TYPE_2__ cb_cred; int cb_proc; TYPE_1__ cb_verf; } ;
struct rpc_msg {TYPE_3__ rm_call; } ;
typedef scalar_t__ rpcvers_t ;
typedef enum xprt_stat { ____Placeholder_xprt_stat } xprt_stat ;
typedef enum auth_stat { ____Placeholder_auth_stat } auth_stat ;
typedef int SVCXPRT ;


 int AUTH_OK ;
 int FALSE ;
 int MAX_AUTH_BYTES ;
 int RPCSEC_GSS_NODISPATCH ;
 int RQCRED_SIZE ;
 int SVC_DESTROY (int *) ;
 scalar_t__ SVC_RECV (int *,struct rpc_msg*) ;
 int SVC_STAT (int *) ;
 int TRUE ;
 int XPRT_DIED ;
 int XPRT_MOREREQS ;
 int ** __svc_xports ;
 int _authenticate (struct svc_req*,struct rpc_msg*) ;
 int rwlock_rdlock (int *) ;
 int rwlock_unlock (int *) ;
 int stub1 (struct svc_req*,int *) ;
 int svc_fd_lock ;
 struct svc_callout* svc_head ;
 int svcerr_auth (int *,int) ;
 int svcerr_noprog (int *) ;
 int svcerr_progvers (int *,scalar_t__,scalar_t__) ;

void
svc_getreq_common(int fd)
{
 SVCXPRT *xprt;
 struct svc_req r;
 struct rpc_msg msg;
 int prog_found;
 rpcvers_t low_vers;
 rpcvers_t high_vers;
 enum xprt_stat stat;
 char cred_area[2*MAX_AUTH_BYTES + RQCRED_SIZE];

 msg.rm_call.cb_cred.oa_base = cred_area;
 msg.rm_call.cb_verf.oa_base = &(cred_area[MAX_AUTH_BYTES]);
 r.rq_clntcred = &(cred_area[2*MAX_AUTH_BYTES]);

 rwlock_rdlock(&svc_fd_lock);
 xprt = __svc_xports[fd];
 rwlock_unlock(&svc_fd_lock);
 if (xprt == ((void*)0))

  return;

 do {
  if (SVC_RECV(xprt, &msg)) {


   struct svc_callout *s;
   enum auth_stat why;

   r.rq_xprt = xprt;
   r.rq_prog = msg.rm_call.cb_prog;
   r.rq_vers = msg.rm_call.cb_vers;
   r.rq_proc = msg.rm_call.cb_proc;
   r.rq_cred = msg.rm_call.cb_cred;

   if ((why = _authenticate(&r, &msg)) != AUTH_OK) {







    if (why != RPCSEC_GSS_NODISPATCH)
     svcerr_auth(xprt, why);
    goto call_done;
   }

   prog_found = FALSE;
   low_vers = (rpcvers_t) -1L;
   high_vers = (rpcvers_t) 0L;
   for (s = svc_head; s != ((void*)0); s = s->sc_next) {
    if (s->sc_prog == r.rq_prog) {
     if (s->sc_vers == r.rq_vers) {
      (*s->sc_dispatch)(&r, xprt);
      goto call_done;
     }
     prog_found = TRUE;
     if (s->sc_vers < low_vers)
      low_vers = s->sc_vers;
     if (s->sc_vers > high_vers)
      high_vers = s->sc_vers;
    }
   }




   if (prog_found)
    svcerr_progvers(xprt, low_vers, high_vers);
   else
    svcerr_noprog(xprt);

  }





  rwlock_rdlock(&svc_fd_lock);
  if (xprt != __svc_xports[fd]) {
   rwlock_unlock(&svc_fd_lock);
   break;
  }
  rwlock_unlock(&svc_fd_lock);
call_done:
  if ((stat = SVC_STAT(xprt)) == XPRT_DIED){
   SVC_DESTROY(xprt);
   break;
  }
 } while (stat == XPRT_MOREREQS);
}
