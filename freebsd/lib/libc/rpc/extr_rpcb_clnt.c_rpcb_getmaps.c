
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xdrproc_t ;
struct netconfig {int dummy; } ;
typedef scalar_t__ rpcvers_t ;
typedef int rpcproc_t ;
typedef int * rpcblist_ptr ;
typedef int rpcblist ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_2__ {int cf_error; void* cf_stat; } ;
typedef int CLIENT ;


 int CLGET_VERS ;
 int CLNT_CALL (int *,int ,int ,int *,int ,char*,int ) ;
 int CLNT_CONTROL (int *,int ,char*) ;
 int CLNT_DESTROY (int *) ;
 int CLSET_VERS ;
 scalar_t__ RPCBPROC_DUMP ;
 scalar_t__ RPCBVERS ;
 scalar_t__ RPCBVERS4 ;
 int RPC_PROGUNAVAIL ;
 int RPC_PROGVERSMISMATCH ;
 void* RPC_RPCBFAILURE ;
 int RPC_SUCCESS ;
 int clnt_geterr (int *,int *) ;
 int * getclnthandle (char const*,struct netconfig const*,int *) ;
 TYPE_1__ rpc_createerr ;
 int tottimeout ;
 scalar_t__ xdr_rpcblist_ptr ;
 scalar_t__ xdr_void ;

rpcblist *
rpcb_getmaps(const struct netconfig *nconf, const char *host)
{
 rpcblist_ptr head = ((void*)0);
 CLIENT *client;
 enum clnt_stat clnt_st;
 rpcvers_t vers = 0;

 client = getclnthandle(host, nconf, ((void*)0));
 if (client == ((void*)0)) {
  return (head);
 }
 clnt_st = CLNT_CALL(client, (rpcproc_t)RPCBPROC_DUMP,
     (xdrproc_t) xdr_void, ((void*)0), (xdrproc_t) xdr_rpcblist_ptr,
     (char *)(void *)&head, tottimeout);
 if (clnt_st == RPC_SUCCESS)
  goto done;

 if ((clnt_st != RPC_PROGVERSMISMATCH) &&
     (clnt_st != RPC_PROGUNAVAIL)) {
  rpc_createerr.cf_stat = RPC_RPCBFAILURE;
  clnt_geterr(client, &rpc_createerr.cf_error);
  goto done;
 }


 CLNT_CONTROL(client, CLGET_VERS, (char *)(void *)&vers);
 if (vers == RPCBVERS4) {
  vers = RPCBVERS;
  CLNT_CONTROL(client, CLSET_VERS, (char *)(void *)&vers);
  if (CLNT_CALL(client, (rpcproc_t)RPCBPROC_DUMP,
      (xdrproc_t) xdr_void, ((void*)0), (xdrproc_t) xdr_rpcblist_ptr,
      (char *)(void *)&head, tottimeout) == RPC_SUCCESS)
   goto done;
 }
 rpc_createerr.cf_stat = RPC_RPCBFAILURE;
 clnt_geterr(client, &rpc_createerr.cf_error);

done:
 CLNT_DESTROY(client);
 return (head);
}
