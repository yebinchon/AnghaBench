
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xdrproc_t ;
struct rpcbs_addrlist {int dummy; } ;
struct TYPE_3__ {struct rpcbs_addrlist* next; int netid; int failure; int success; int vers; int prog; } ;
typedef TYPE_1__ rpcbs_addrlist ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int RPC_MAXDATASIZE ;
 int TRUE ;
 int xdr_int (int *,int *) ;
 int xdr_pointer (int *,char**,int,int ) ;
 int xdr_rpcprog (int *,int *) ;
 int xdr_rpcvers (int *,int *) ;
 int xdr_string (int *,int *,int ) ;

bool_t
xdr_rpcbs_addrlist(XDR *xdrs, rpcbs_addrlist *objp)
{
 struct rpcbs_addrlist **pnext;

     if (!xdr_rpcprog(xdrs, &objp->prog)) {
  return (FALSE);
     }
     if (!xdr_rpcvers(xdrs, &objp->vers)) {
  return (FALSE);
     }
     if (!xdr_int(xdrs, &objp->success)) {
  return (FALSE);
     }
     if (!xdr_int(xdrs, &objp->failure)) {
  return (FALSE);
     }
     if (!xdr_string(xdrs, &objp->netid, RPC_MAXDATASIZE)) {
  return (FALSE);
     }

     pnext = &objp->next;

     if (!xdr_pointer(xdrs, (char **) pnext,
   sizeof (rpcbs_addrlist),
   (xdrproc_t)xdr_rpcbs_addrlist)) {
  return (FALSE);
     }

 return (TRUE);
}
