
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_int (int *,int*) ;

bool_t
xdr_char(XDR *xdrs, char *cp)
{
 int i;

 i = (*cp);
 if (!xdr_int(xdrs, &i)) {
  return (FALSE);
 }
 *cp = i;
 return (TRUE);
}
