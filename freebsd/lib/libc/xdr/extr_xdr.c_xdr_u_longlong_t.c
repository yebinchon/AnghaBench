
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_longlong_t ;
typedef int u_int64_t ;
typedef int bool_t ;
typedef int XDR ;


 int xdr_u_int64_t (int *,int *) ;

bool_t
xdr_u_longlong_t(XDR *xdrs, u_longlong_t *ullp)
{





 return (xdr_u_int64_t(xdrs, (u_int64_t *)ullp));
}
