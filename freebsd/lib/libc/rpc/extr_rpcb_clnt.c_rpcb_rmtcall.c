
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* xdrproc_t ;
struct timeval {int dummy; } ;
struct TYPE_4__ {void* results_val; } ;
struct r_rpcb_rmtcallres {int * addr; void* xdr_res; TYPE_2__ results; } ;
struct TYPE_3__ {void* args_val; } ;
struct r_rpcb_rmtcallargs {void* xdr_args; TYPE_1__ args; int proc; scalar_t__ vers; int prog; } ;
struct netconfig {int dummy; } ;
struct netbuf {scalar_t__ len; scalar_t__ maxlen; struct netbuf* buf; } ;
typedef scalar_t__ rpcvers_t ;
typedef int rpcprog_t ;
typedef int rpcproc_t ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef void* caddr_t ;
typedef int CLIENT ;


 int CLNT_CALL (int *,int ,void*,char*,void*,char*,struct timeval) ;
 int CLNT_CONTROL (int *,int ,char*) ;
 int CLNT_DESTROY (int *) ;
 int CLSET_RETRY_TIMEOUT ;
 int CLSET_VERS ;
 scalar_t__ RPCBPROC_CALLIT ;
 scalar_t__ RPCBVERS ;
 scalar_t__ RPCBVERS4 ;
 int RPC_FAILED ;
 int RPC_N2AXLATEFAILURE ;
 int RPC_PROGUNAVAIL ;
 int RPC_PROGVERSMISMATCH ;
 int RPC_SUCCESS ;
 int free (struct netbuf*) ;
 int * getclnthandle (char const*,struct netconfig const*,int *) ;
 int memcpy (struct netbuf*,struct netbuf*,size_t) ;
 int rmttimeout ;
 struct netbuf* uaddr2taddr (struct netconfig*,int *) ;
 int xdr_free (void*,char*) ;
 scalar_t__ xdr_rpcb_rmtcallargs ;
 scalar_t__ xdr_rpcb_rmtcallres ;
 scalar_t__ xdr_wrapstring ;

enum clnt_stat
rpcb_rmtcall(const struct netconfig *nconf, const char *host, rpcprog_t prog,
    rpcvers_t vers, rpcproc_t proc, xdrproc_t xdrargs, caddr_t argsp,
    xdrproc_t xdrres, caddr_t resp, struct timeval tout,
    const struct netbuf *addr_ptr)
{
 CLIENT *client;
 enum clnt_stat stat;
 struct r_rpcb_rmtcallargs a;
 struct r_rpcb_rmtcallres r;
 rpcvers_t rpcb_vers;

 stat = 0;
 client = getclnthandle(host, nconf, ((void*)0));
 if (client == ((void*)0)) {
  return (RPC_FAILED);
 }

 CLNT_CONTROL(client, CLSET_RETRY_TIMEOUT, (char *)(void *)&rmttimeout);
 a.prog = prog;
 a.vers = vers;
 a.proc = proc;
 a.args.args_val = argsp;
 a.xdr_args = xdrargs;
 r.addr = ((void*)0);
 r.results.results_val = resp;
 r.xdr_res = xdrres;

 for (rpcb_vers = RPCBVERS4; rpcb_vers >= RPCBVERS; rpcb_vers--) {
  CLNT_CONTROL(client, CLSET_VERS, (char *)(void *)&rpcb_vers);
  stat = CLNT_CALL(client, (rpcproc_t)RPCBPROC_CALLIT,
      (xdrproc_t) xdr_rpcb_rmtcallargs, (char *)(void *)&a,
      (xdrproc_t) xdr_rpcb_rmtcallres, (char *)(void *)&r, tout);
  if ((stat == RPC_SUCCESS) && (addr_ptr != ((void*)0))) {
   struct netbuf *na;

   na = uaddr2taddr((struct netconfig *) nconf, r.addr);
   if (!na) {
    stat = RPC_N2AXLATEFAILURE;

    ((struct netbuf *) addr_ptr)->len = 0;
    goto error;
   }
   if (na->len > addr_ptr->maxlen) {

    stat = RPC_FAILED;
    free(na->buf);
    free(na);

    ((struct netbuf *) addr_ptr)->len = 0;
    goto error;
   }
   memcpy(addr_ptr->buf, na->buf, (size_t)na->len);

   ((struct netbuf *)addr_ptr)->len = na->len;
   free(na->buf);
   free(na);
   break;
  } else if ((stat != RPC_PROGVERSMISMATCH) &&
       (stat != RPC_PROGUNAVAIL)) {
   goto error;
  }
 }
error:
 CLNT_DESTROY(client);
 if (r.addr)
  xdr_free((xdrproc_t) xdr_wrapstring, (char *)(void *)&r.addr);
 return (stat);
}
