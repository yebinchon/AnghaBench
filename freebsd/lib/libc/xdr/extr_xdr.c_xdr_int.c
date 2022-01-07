
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int bool_t ;
struct TYPE_5__ {int x_op; } ;
typedef TYPE_1__ XDR ;


 int FALSE ;
 int TRUE ;



 int XDR_GETLONG (TYPE_1__*,long*) ;
 int XDR_PUTLONG (TYPE_1__*,long*) ;

bool_t
xdr_int(XDR *xdrs, int *ip)
{
 long l;

 switch (xdrs->x_op) {

 case 129:
  l = (long) *ip;
  return (XDR_PUTLONG(xdrs, &l));

 case 130:
  if (!XDR_GETLONG(xdrs, &l)) {
   return (FALSE);
  }
  *ip = (int) l;
  return (TRUE);

 case 128:
  return (TRUE);
 }

 return (FALSE);
}
