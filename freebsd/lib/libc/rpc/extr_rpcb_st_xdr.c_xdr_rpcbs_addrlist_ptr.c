
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef int rpcbs_addrlist_ptr ;
typedef int rpcbs_addrlist ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_pointer (int *,char**,int,int ) ;
 scalar_t__ xdr_rpcbs_addrlist ;

bool_t
xdr_rpcbs_addrlist_ptr(XDR *xdrs, rpcbs_addrlist_ptr *objp)
{
 if (!xdr_pointer(xdrs, (char **)objp, sizeof (rpcbs_addrlist),
   (xdrproc_t)xdr_rpcbs_addrlist)) {
  return (FALSE);
 }
 return (TRUE);
}
