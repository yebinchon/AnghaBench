
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rpcblist_ptr ;
typedef int bool_t ;
typedef int XDR ;
typedef int RPCBLIST ;


 int xdr_rpcblist_ptr (int *,int *) ;

bool_t
xdr_rpcblist(XDR *xdrs, RPCBLIST **rp)
{
 bool_t dummy;

 dummy = xdr_rpcblist_ptr(xdrs, (rpcblist_ptr *)rp);
 return (dummy);
}
