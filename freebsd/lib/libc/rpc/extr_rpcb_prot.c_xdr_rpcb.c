
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bool_t ;
typedef int XDR ;
struct TYPE_3__ {int r_owner; int r_addr; int r_netid; int r_vers; int r_prog; } ;
typedef TYPE_1__ RPCB ;


 int FALSE ;
 int RPC_MAXDATASIZE ;
 int TRUE ;
 int xdr_rpcprog (int *,int *) ;
 int xdr_rpcvers (int *,int *) ;
 int xdr_string (int *,int *,int ) ;

bool_t
xdr_rpcb(XDR *xdrs, RPCB *objp)
{
 if (!xdr_rpcprog(xdrs, &objp->r_prog)) {
  return (FALSE);
 }
 if (!xdr_rpcvers(xdrs, &objp->r_vers)) {
  return (FALSE);
 }
 if (!xdr_string(xdrs, &objp->r_netid, RPC_MAXDATASIZE)) {
  return (FALSE);
 }
 if (!xdr_string(xdrs, &objp->r_addr, RPC_MAXDATASIZE)) {
  return (FALSE);
 }
 if (!xdr_string(xdrs, &objp->r_owner, RPC_MAXDATASIZE)) {
  return (FALSE);
 }
 return (TRUE);
}
