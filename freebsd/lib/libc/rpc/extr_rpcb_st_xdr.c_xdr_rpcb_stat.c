
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rmtinfo; int addrinfo; int unsetinfo; int setinfo; int info; } ;
typedef TYPE_1__ rpcb_stat ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_int (int *,int *) ;
 int xdr_rpcbs_addrlist_ptr (int *,int *) ;
 int xdr_rpcbs_proc (int *,int ) ;
 int xdr_rpcbs_rmtcalllist_ptr (int *,int *) ;

bool_t
xdr_rpcb_stat(XDR *xdrs, rpcb_stat *objp)
{

 if (!xdr_rpcbs_proc(xdrs, objp->info)) {
  return (FALSE);
 }
 if (!xdr_int(xdrs, &objp->setinfo)) {
  return (FALSE);
 }
 if (!xdr_int(xdrs, &objp->unsetinfo)) {
  return (FALSE);
 }
 if (!xdr_rpcbs_addrlist_ptr(xdrs, &objp->addrinfo)) {
  return (FALSE);
 }
 if (!xdr_rpcbs_rmtcalllist_ptr(xdrs, &objp->rmtinfo)) {
  return (FALSE);
 }
 return (TRUE);
}
