
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef int u_long ;
struct rmtcallres {int results_ptr; int (* xdr_results ) (int *,int ) ;int * port_ptr; int resultslen; } ;
typedef scalar_t__ caddr_t ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int assert (int ) ;
 int stub1 (int *,int ) ;
 scalar_t__ xdr_reference (int *,scalar_t__*,int,int ) ;
 scalar_t__ xdr_u_long (int *,int *) ;

bool_t
xdr_rmtcallres(XDR *xdrs, struct rmtcallres *crp)
{
 caddr_t port_ptr;

 assert(xdrs != ((void*)0));
 assert(crp != ((void*)0));

 port_ptr = (caddr_t)(void *)crp->port_ptr;
 if (xdr_reference(xdrs, &port_ptr, sizeof (u_long),
     (xdrproc_t)xdr_u_long) && xdr_u_long(xdrs, &crp->resultslen)) {
  crp->port_ptr = (u_long *)(void *)port_ptr;
  return ((*(crp->xdr_results))(xdrs, crp->results_ptr));
 }
 return (FALSE);
}
