
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


 scalar_t__ CLNT_CALL (int *,int ,int ,char*,int ,char*,int ) ;
 int CLNT_DESTROY (int *) ;
 scalar_t__ RPCBPROC_UADDR2TADDR ;
 scalar_t__ RPC_SUCCESS ;
 int RPC_UNKNOWNADDR ;
 int RPC_UNKNOWNPROTO ;
 scalar_t__ calloc (int,int) ;
 int free (struct netbuf*) ;
 int * local_rpcb () ;
 TYPE_1__ rpc_createerr ;
 int tottimeout ;
 scalar_t__ xdr_netbuf ;
 scalar_t__ xdr_wrapstring ;

struct netbuf *
rpcb_uaddr2taddr(struct netconfig *nconf, char *uaddr)
{
 CLIENT *client;
 struct netbuf *taddr;



 if (nconf == ((void*)0)) {
  rpc_createerr.cf_stat = RPC_UNKNOWNPROTO;
  return (((void*)0));
 }
 if (uaddr == ((void*)0)) {
  rpc_createerr.cf_stat = RPC_UNKNOWNADDR;
  return (((void*)0));
 }
 client = local_rpcb();
 if (! client) {
  return (((void*)0));
 }

 taddr = (struct netbuf *)calloc(1, sizeof (struct netbuf));
 if (taddr == ((void*)0)) {
  CLNT_DESTROY(client);
  return (((void*)0));
 }
 if (CLNT_CALL(client, (rpcproc_t)RPCBPROC_UADDR2TADDR,
     (xdrproc_t) xdr_wrapstring, (char *)(void *)&uaddr,
     (xdrproc_t) xdr_netbuf, (char *)(void *)taddr,
     tottimeout) != RPC_SUCCESS) {
  free(taddr);
  taddr = ((void*)0);
 }
 CLNT_DESTROY(client);
 return (taddr);
}
