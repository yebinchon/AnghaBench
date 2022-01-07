
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keybuf ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int HEXKEYBYTES ;
 int TRUE ;
 int xdr_opaque (int *,int ,int ) ;

bool_t
xdr_keybuf(register XDR *xdrs, keybuf objp)
{

 if (!xdr_opaque(xdrs, objp, HEXKEYBYTES))
  return (FALSE);
 return (TRUE);
}
