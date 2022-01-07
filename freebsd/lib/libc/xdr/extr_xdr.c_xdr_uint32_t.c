
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_long ;
typedef int u_int32_t ;
typedef int bool_t ;
struct TYPE_5__ {int x_op; } ;
typedef TYPE_1__ XDR ;


 int FALSE ;
 int TRUE ;



 int XDR_GETLONG (TYPE_1__*,long*) ;
 int XDR_PUTLONG (TYPE_1__*,long*) ;

bool_t
xdr_uint32_t(XDR *xdrs, uint32_t *u_int32_p)
{
 u_long l;

 switch (xdrs->x_op) {

 case 129:
  l = (u_long) *u_int32_p;
  return (XDR_PUTLONG(xdrs, (long *)&l));

 case 130:
  if (!XDR_GETLONG(xdrs, (long *)&l)) {
   return (FALSE);
  }
  *u_int32_p = (u_int32_t) l;
  return (TRUE);

 case 128:
  return (TRUE);
 }

 return (FALSE);
}
