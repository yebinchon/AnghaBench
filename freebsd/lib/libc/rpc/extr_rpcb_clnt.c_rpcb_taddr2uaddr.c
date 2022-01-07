
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xdrproc_t ;
struct netconfig {int dummy; } ;
struct netbuf {int dummy; } ;
typedef int rpcproc_t ;
struct TYPE_2__ {int cf_stat; } ;
typedef int CLIENT ;


 int CLNT_CALL (int *,int ,int ,char*,int ,char*,int ) ;
 int CLNT_DESTROY (int *) ;
 scalar_t__ RPCBPROC_TADDR2UADDR ;
 int RPC_UNKNOWNADDR ;
 int RPC_UNKNOWNPROTO ;
 int * local_rpcb () ;
 TYPE_1__ rpc_createerr ;
 int tottimeout ;
 scalar_t__ xdr_netbuf ;
 scalar_t__ xdr_wrapstring ;

char *
rpcb_taddr2uaddr(struct netconfig *nconf, struct netbuf *taddr)
{
 CLIENT *client;
 char *uaddr = ((void*)0);



 if (nconf == ((void*)0)) {
  rpc_createerr.cf_stat = RPC_UNKNOWNPROTO;
  return (((void*)0));
 }
 if (taddr == ((void*)0)) {
  rpc_createerr.cf_stat = RPC_UNKNOWNADDR;
  return (((void*)0));
 }
 client = local_rpcb();
 if (! client) {
  return (((void*)0));
 }

 CLNT_CALL(client, (rpcproc_t)RPCBPROC_TADDR2UADDR,
     (xdrproc_t) xdr_netbuf, (char *)(void *)taddr,
     (xdrproc_t) xdr_wrapstring, (char *)(void *)&uaddr, tottimeout);
 CLNT_DESTROY(client);
 return (uaddr);
}
