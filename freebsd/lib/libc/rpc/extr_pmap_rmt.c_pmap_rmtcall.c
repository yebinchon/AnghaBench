
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* xdrproc_t ;
typedef void* u_long ;
struct timeval {int dummy; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct rmtcallres {void** port_ptr; void* xdr_results; void* results_ptr; } ;
struct rmtcallargs {void* xdr_args; void* args_ptr; void* proc; void* vers; void* prog; } ;
typedef int rpcproc_t ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef void* caddr_t ;
typedef int CLIENT ;


 int CLNT_CALL (int *,int ,void*,struct rmtcallargs*,void*,struct rmtcallres*,struct timeval) ;
 int CLNT_DESTROY (int *) ;
 int PMAPPORT ;
 scalar_t__ PMAPPROC_CALLIT ;
 int PMAPPROG ;
 int PMAPVERS ;
 int RPC_FAILED ;
 int assert (int ) ;
 int * clntudp_create (struct sockaddr_in*,int ,int ,int ,int*) ;
 scalar_t__ htons (int ) ;
 int timeout ;
 scalar_t__ xdr_rmtcall_args ;
 scalar_t__ xdr_rmtcallres ;

enum clnt_stat
pmap_rmtcall(struct sockaddr_in *addr, u_long prog, u_long vers, u_long proc,
    xdrproc_t xdrargs, caddr_t argsp, xdrproc_t xdrres, caddr_t resp,
    struct timeval tout, u_long *port_ptr)
{
 int sock = -1;
 CLIENT *client;
 struct rmtcallargs a;
 struct rmtcallres r;
 enum clnt_stat stat;

 assert(addr != ((void*)0));
 assert(port_ptr != ((void*)0));

 addr->sin_port = htons(PMAPPORT);
 client = clntudp_create(addr, PMAPPROG, PMAPVERS, timeout, &sock);
 if (client != ((void*)0)) {
  a.prog = prog;
  a.vers = vers;
  a.proc = proc;
  a.args_ptr = argsp;
  a.xdr_args = xdrargs;
  r.port_ptr = port_ptr;
  r.results_ptr = resp;
  r.xdr_results = xdrres;
  stat = CLNT_CALL(client, (rpcproc_t)PMAPPROC_CALLIT,
      (xdrproc_t)xdr_rmtcall_args, &a, (xdrproc_t)xdr_rmtcallres,
      &r, tout);
  CLNT_DESTROY(client);
 } else {
  stat = RPC_FAILED;
 }
 addr->sin_port = 0;
 return (stat);
}
