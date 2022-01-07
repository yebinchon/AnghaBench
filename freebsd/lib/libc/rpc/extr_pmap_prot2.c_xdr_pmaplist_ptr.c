
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmaplist {int dummy; } ;
typedef int bool_t ;
typedef int XDR ;


 int xdr_pmaplist (int *,struct pmaplist**) ;

bool_t
xdr_pmaplist_ptr(XDR *xdrs, struct pmaplist *rp)
{
 return xdr_pmaplist(xdrs, (struct pmaplist **)(void *)rp);
}
