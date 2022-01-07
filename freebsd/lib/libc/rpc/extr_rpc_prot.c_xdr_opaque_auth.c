
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opaque_auth {int oa_length; int oa_base; int oa_flavor; } ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int MAX_AUTH_BYTES ;
 int assert (int ) ;
 int xdr_bytes (int *,int *,int *,int ) ;
 scalar_t__ xdr_enum (int *,int *) ;

bool_t
xdr_opaque_auth(XDR *xdrs, struct opaque_auth *ap)
{

 assert(xdrs != ((void*)0));
 assert(ap != ((void*)0));

 if (xdr_enum(xdrs, &(ap->oa_flavor)))
  return (xdr_bytes(xdrs, &ap->oa_base,
   &ap->oa_length, MAX_AUTH_BYTES));
 return (FALSE);
}
