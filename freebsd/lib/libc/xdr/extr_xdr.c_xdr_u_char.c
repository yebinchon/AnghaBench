
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_u_int (int *,int *) ;

bool_t
xdr_u_char(XDR *xdrs, u_char *cp)
{
 u_int u;

 u = (*cp);
 if (!xdr_u_int(xdrs, &u)) {
  return (FALSE);
 }
 *cp = u;
 return (TRUE);
}
