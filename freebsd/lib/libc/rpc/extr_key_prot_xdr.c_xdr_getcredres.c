
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cred; } ;
struct TYPE_5__ {int status; TYPE_1__ getcredres_u; } ;
typedef TYPE_2__ getcredres ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;

 int TRUE ;
 int xdr_keystatus (int *,int*) ;
 int xdr_unixcred (int *,int *) ;

bool_t
xdr_getcredres(register XDR *xdrs, getcredres *objp)
{

 if (!xdr_keystatus(xdrs, &objp->status))
  return (FALSE);
 switch (objp->status) {
 case 128:
  if (!xdr_unixcred(xdrs, &objp->getcredres_u.cred))
   return (FALSE);
  break;
 default:
  break;
 }
 return (TRUE);
}
