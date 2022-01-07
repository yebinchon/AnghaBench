
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int64_t ;
typedef int bool_t ;
struct TYPE_5__ {int x_op; } ;
typedef TYPE_1__ XDR ;


 int FALSE ;
 int TRUE ;



 int XDR_GETLONG (TYPE_1__*,long*) ;
 int XDR_PUTLONG (TYPE_1__*,long*) ;

bool_t
xdr_u_int64_t(XDR *xdrs, u_int64_t *ullp)
{
 u_long ul[2];

 switch (xdrs->x_op) {
 case 129:
  ul[0] = (u_long)(*ullp >> 32) & 0xffffffff;
  ul[1] = (u_long)(*ullp) & 0xffffffff;
  if (XDR_PUTLONG(xdrs, (long *)&ul[0]) == FALSE)
   return (FALSE);
  return (XDR_PUTLONG(xdrs, (long *)&ul[1]));
 case 130:
  if (XDR_GETLONG(xdrs, (long *)&ul[0]) == FALSE)
   return (FALSE);
  if (XDR_GETLONG(xdrs, (long *)&ul[1]) == FALSE)
   return (FALSE);
  *ullp = (u_int64_t)
      (((u_int64_t)ul[0] << 32) | ((u_int64_t)ul[1]));
  return (TRUE);
 case 128:
  return (TRUE);
 }

 return (FALSE);
}
