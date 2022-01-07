
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int r_nc_proto; int r_nc_protofmly; int r_nc_semantics; int r_nc_netid; int r_maddr; } ;
typedef TYPE_1__ rpcb_entry ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int RPC_MAXDATASIZE ;
 int TRUE ;
 int xdr_string (int *,int *,int ) ;
 int xdr_u_int32_t (int *,int *) ;

bool_t
xdr_rpcb_entry(XDR *xdrs, rpcb_entry *objp)
{
 if (!xdr_string(xdrs, &objp->r_maddr, RPC_MAXDATASIZE)) {
  return (FALSE);
 }
 if (!xdr_string(xdrs, &objp->r_nc_netid, RPC_MAXDATASIZE)) {
  return (FALSE);
 }
 if (!xdr_u_int32_t(xdrs, &objp->r_nc_semantics)) {
  return (FALSE);
 }
 if (!xdr_string(xdrs, &objp->r_nc_protofmly, RPC_MAXDATASIZE)) {
  return (FALSE);
 }
 if (!xdr_string(xdrs, &objp->r_nc_proto, RPC_MAXDATASIZE)) {
  return (FALSE);
 }
 return (TRUE);
}
