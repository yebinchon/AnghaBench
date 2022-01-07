
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* xdrproc_t ) (int *,int ) ;
typedef int caddr_t ;
typedef int bool_t ;
typedef int XDR ;
typedef int SVCAUTH ;



__attribute__((used)) static bool_t
svcauth_null_wrap(SVCAUTH *auth, XDR *xdrs, xdrproc_t xdr_func, caddr_t xdr_ptr)
{

 return (xdr_func(xdrs, xdr_ptr));
}
