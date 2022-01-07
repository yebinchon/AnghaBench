
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef int u_int ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_bool (int *,int *) ;
 int xdr_reference (int *,char**,int ,int ) ;

bool_t
xdr_pointer(XDR *xdrs, char **objpp, u_int obj_size, xdrproc_t xdr_obj)
{

 bool_t more_data;

 more_data = (*objpp != ((void*)0));
 if (! xdr_bool(xdrs,&more_data)) {
  return (FALSE);
 }
 if (! more_data) {
  *objpp = ((void*)0);
  return (TRUE);
 }
 return (xdr_reference(xdrs,objpp,obj_size,xdr_obj));
}
