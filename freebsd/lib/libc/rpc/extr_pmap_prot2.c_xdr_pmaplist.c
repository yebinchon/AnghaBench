
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef int u_int ;
struct pmaplist {struct pmaplist* pml_next; } ;
typedef int caddr_t ;
typedef scalar_t__ bool_t ;
struct TYPE_5__ {scalar_t__ x_op; } ;
typedef TYPE_1__ XDR ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ XDR_FREE ;
 int assert (int ) ;
 int xdr_bool (TYPE_1__*,scalar_t__*) ;
 scalar_t__ xdr_pmap ;
 int xdr_reference (TYPE_1__*,int *,int ,int ) ;

bool_t
xdr_pmaplist(XDR *xdrs, struct pmaplist **rp)
{





 bool_t more_elements;
 int freeing;
 struct pmaplist **next = ((void*)0);

 assert(xdrs != ((void*)0));
 assert(rp != ((void*)0));

 freeing = (xdrs->x_op == XDR_FREE);

 for (;;) {
  more_elements = (bool_t)(*rp != ((void*)0));
  if (! xdr_bool(xdrs, &more_elements))
   return (FALSE);
  if (! more_elements)
   return (TRUE);





  if (freeing)
   next = &((*rp)->pml_next);
  if (! xdr_reference(xdrs, (caddr_t *)rp,
      (u_int)sizeof(struct pmaplist), (xdrproc_t)xdr_pmap))
   return (FALSE);
  rp = (freeing) ? next : &((*rp)->pml_next);
 }
}
