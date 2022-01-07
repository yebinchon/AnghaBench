
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef scalar_t__ u_short ;
typedef void* u_long ;
typedef int u_int ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct pmap {scalar_t__ pm_port; int pm_prot; void* pm_vers; void* pm_prog; } ;
typedef int rpcproc_t ;
struct TYPE_2__ {int cf_stat; int cf_error; } ;
typedef int CLIENT ;


 scalar_t__ CLNT_CALL (int *,int ,int ,struct pmap*,int ,scalar_t__*,int ) ;
 int CLNT_DESTROY (int *) ;
 int PMAPPORT ;
 scalar_t__ PMAPPROC_GETPORT ;
 int PMAPPROG ;
 int PMAPVERS ;
 int RPCSMALLMSGSIZE ;
 int RPC_PMAPFAILURE ;
 int RPC_PROGNOTREGISTERED ;
 scalar_t__ RPC_SUCCESS ;
 int assert (int ) ;
 int clnt_geterr (int *,int *) ;
 int * clntudp_bufcreate (struct sockaddr_in*,int ,int ,int ,int*,int ,int ) ;
 scalar_t__ htons (int ) ;
 TYPE_1__ rpc_createerr ;
 int timeout ;
 int tottimeout ;
 scalar_t__ xdr_pmap ;
 scalar_t__ xdr_u_short ;

u_short
pmap_getport(struct sockaddr_in *address, u_long program, u_long version,
    u_int protocol)
{
 u_short port = 0;
 int sock = -1;
 CLIENT *client;
 struct pmap parms;

 assert(address != ((void*)0));

 address->sin_port = htons(PMAPPORT);
 client = clntudp_bufcreate(address, PMAPPROG,
     PMAPVERS, timeout, &sock, RPCSMALLMSGSIZE, RPCSMALLMSGSIZE);
 if (client != ((void*)0)) {
  parms.pm_prog = program;
  parms.pm_vers = version;
  parms.pm_prot = protocol;
  parms.pm_port = 0;
  if (CLNT_CALL(client, (rpcproc_t)PMAPPROC_GETPORT,
      (xdrproc_t)xdr_pmap,
      &parms, (xdrproc_t)xdr_u_short, &port, tottimeout) !=
      RPC_SUCCESS){
   rpc_createerr.cf_stat = RPC_PMAPFAILURE;
   clnt_geterr(client, &rpc_createerr.cf_error);
  } else if (port == 0) {
   rpc_createerr.cf_stat = RPC_PROGNOTREGISTERED;
  }
  CLNT_DESTROY(client);
 }
 address->sin_port = 0;
 return (port);
}
