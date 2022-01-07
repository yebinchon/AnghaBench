
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xdrproc_t ;
struct netconfig {char* nc_netid; } ;
typedef int rpcvers_t ;
typedef int rpcprog_t ;
typedef int rpcproc_t ;
typedef int bool_t ;
struct TYPE_2__ {char* r_netid; char* r_addr; char* r_owner; int r_vers; int r_prog; } ;
typedef TYPE_1__ RPCB ;
typedef int CLIENT ;


 int CLNT_CALL (int *,int ,int ,char*,int ,char*,int ) ;
 int CLNT_DESTROY (int *) ;
 int FALSE ;
 scalar_t__ RPCBPROC_UNSET ;
 int geteuid () ;
 int * local_rpcb () ;
 int * nullstring ;
 int snprintf (char*,int,char*,int) ;
 int tottimeout ;
 scalar_t__ xdr_bool ;
 scalar_t__ xdr_rpcb ;

bool_t
rpcb_unset(rpcprog_t program, rpcvers_t version, const struct netconfig *nconf)
{
 CLIENT *client;
 bool_t rslt = FALSE;
 RPCB parms;
 char uidbuf[32];

 client = local_rpcb();
 if (! client) {
  return (FALSE);
 }

 parms.r_prog = program;
 parms.r_vers = version;
 if (nconf)
  parms.r_netid = nconf->nc_netid;
 else {

  parms.r_netid = (char *) &nullstring[0];
 }

 parms.r_addr = (char *) &nullstring[0];
 (void) snprintf(uidbuf, sizeof uidbuf, "%d", geteuid());
 parms.r_owner = uidbuf;

 CLNT_CALL(client, (rpcproc_t)RPCBPROC_UNSET, (xdrproc_t) xdr_rpcb,
     (char *)(void *)&parms, (xdrproc_t) xdr_bool,
     (char *)(void *)&rslt, tottimeout);

 CLNT_DESTROY(client);
 return (rslt);
}
