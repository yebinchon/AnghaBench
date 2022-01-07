
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int deskey; } ;
struct TYPE_5__ {int status; TYPE_1__ cryptkeyres_u; } ;
typedef TYPE_2__ cryptkeyres ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;

 int TRUE ;
 int xdr_des_block (int *,int *) ;
 int xdr_keystatus (int *,int*) ;

bool_t
xdr_cryptkeyres(register XDR *xdrs, cryptkeyres *objp)
{

 if (!xdr_keystatus(xdrs, &objp->status))
  return (FALSE);
 switch (objp->status) {
 case 128:
  if (!xdr_des_block(xdrs, &objp->cryptkeyres_u.deskey))
   return (FALSE);
  break;
 default:
  break;
 }
 return (TRUE);
}
