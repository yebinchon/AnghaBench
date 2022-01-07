
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xdrproc_t ;
struct netconfig {int nc_netid; } ;
struct netbuf {int dummy; } ;
typedef int rpcvers_t ;
typedef int rpcprog_t ;
typedef int rpcproc_t ;
typedef int bool_t ;
struct TYPE_4__ {int cf_stat; } ;
struct TYPE_3__ {char* r_owner; int r_addr; int r_netid; int r_vers; int r_prog; } ;
typedef TYPE_1__ RPCB ;
typedef int CLIENT ;


 int CLNT_CALL (int *,int ,int ,char*,int ,char*,int ) ;
 int CLNT_DESTROY (int *) ;
 int FALSE ;
 scalar_t__ RPCBPROC_SET ;
 int RPC_N2AXLATEFAILURE ;
 int RPC_UNKNOWNADDR ;
 int RPC_UNKNOWNPROTO ;
 int free (int ) ;
 int geteuid () ;
 int * local_rpcb () ;
 TYPE_2__ rpc_createerr ;
 int snprintf (char*,int,char*,int) ;
 int taddr2uaddr (struct netconfig*,struct netbuf*) ;
 int tottimeout ;
 scalar_t__ xdr_bool ;
 scalar_t__ xdr_rpcb ;

bool_t
rpcb_set(rpcprog_t program, rpcvers_t version, const struct netconfig *nconf,
    const struct netbuf *address)
{
 CLIENT *client;
 bool_t rslt = FALSE;
 RPCB parms;
 char uidbuf[32];


 if (nconf == ((void*)0)) {
  rpc_createerr.cf_stat = RPC_UNKNOWNPROTO;
  return (FALSE);
 }
 if (address == ((void*)0)) {
  rpc_createerr.cf_stat = RPC_UNKNOWNADDR;
  return (FALSE);
 }
 client = local_rpcb();
 if (! client) {
  return (FALSE);
 }



 parms.r_addr = taddr2uaddr((struct netconfig *) nconf,
       (struct netbuf *)address);
 if (!parms.r_addr) {
  CLNT_DESTROY(client);
  rpc_createerr.cf_stat = RPC_N2AXLATEFAILURE;
  return (FALSE);
 }
 parms.r_prog = program;
 parms.r_vers = version;
 parms.r_netid = nconf->nc_netid;





 (void) snprintf(uidbuf, sizeof uidbuf, "%d", geteuid());
 parms.r_owner = uidbuf;

 CLNT_CALL(client, (rpcproc_t)RPCBPROC_SET, (xdrproc_t) xdr_rpcb,
     (char *)(void *)&parms, (xdrproc_t) xdr_bool,
     (char *)(void *)&rslt, tottimeout);

 CLNT_DESTROY(client);
 free(parms.r_addr);
 return (rslt);
}
