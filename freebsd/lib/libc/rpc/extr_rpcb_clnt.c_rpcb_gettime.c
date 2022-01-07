
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef int time_t ;
struct netconfig {int dummy; } ;
typedef scalar_t__ rpcvers_t ;
typedef int rpcproc_t ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int bool_t ;
struct TYPE_2__ {scalar_t__ cf_stat; } ;
typedef int CLIENT ;


 int CLGET_VERS ;
 int CLNT_CALL (int *,int ,int ,int *,int ,char*,int ) ;
 int CLNT_CONTROL (int *,int ,char*) ;
 int CLNT_DESTROY (int *) ;
 int CLSET_VERS ;
 int FALSE ;
 scalar_t__ RPCBPROC_GETTIME ;
 scalar_t__ RPCBVERS ;
 scalar_t__ RPCBVERS4 ;
 int RPC_PROGUNAVAIL ;
 int RPC_PROGVERSMISMATCH ;
 scalar_t__ RPC_SUCCESS ;
 void* RPC_UNKNOWNPROTO ;
 int TRUE ;
 int __rpc_endconf (void*) ;
 struct netconfig* __rpc_getconf (void*) ;
 void* __rpc_setconf (char*) ;
 int * getclnthandle (char const*,struct netconfig*,int *) ;
 TYPE_1__ rpc_createerr ;
 int time (int *) ;
 int tottimeout ;
 scalar_t__ xdr_int ;
 scalar_t__ xdr_void ;

bool_t
rpcb_gettime(const char *host, time_t *timep)
{
 CLIENT *client = ((void*)0);
 void *handle;
 struct netconfig *nconf;
 rpcvers_t vers;
 enum clnt_stat st;


 if ((host == ((void*)0)) || (host[0] == 0)) {
  time(timep);
  return (TRUE);
 }

 if ((handle = __rpc_setconf("netpath")) == ((void*)0)) {
  rpc_createerr.cf_stat = RPC_UNKNOWNPROTO;
  return (FALSE);
 }
 rpc_createerr.cf_stat = RPC_SUCCESS;
 while (client == ((void*)0)) {
  if ((nconf = __rpc_getconf(handle)) == ((void*)0)) {
   if (rpc_createerr.cf_stat == RPC_SUCCESS)
    rpc_createerr.cf_stat = RPC_UNKNOWNPROTO;
   break;
  }
  client = getclnthandle(host, nconf, ((void*)0));
  if (client)
   break;
 }
 __rpc_endconf(handle);
 if (client == (CLIENT *) ((void*)0)) {
  return (FALSE);
 }

 st = CLNT_CALL(client, (rpcproc_t)RPCBPROC_GETTIME,
  (xdrproc_t) xdr_void, ((void*)0),
  (xdrproc_t) xdr_int, (char *)(void *)timep, tottimeout);

 if ((st == RPC_PROGVERSMISMATCH) || (st == RPC_PROGUNAVAIL)) {
  CLNT_CONTROL(client, CLGET_VERS, (char *)(void *)&vers);
  if (vers == RPCBVERS4) {

   vers = RPCBVERS;
   CLNT_CONTROL(client, CLSET_VERS, (char *)(void *)&vers);
   st = CLNT_CALL(client, (rpcproc_t)RPCBPROC_GETTIME,
    (xdrproc_t) xdr_void, ((void*)0),
    (xdrproc_t) xdr_int, (char *)(void *)timep,
    tottimeout);
  }
 }
 CLNT_DESTROY(client);
 return (st == RPC_SUCCESS? TRUE: FALSE);
}
