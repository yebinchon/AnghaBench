
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int high; int low; } ;
struct TYPE_3__ {int where; int (* proc ) (int *,int ) ;} ;
struct accepted_reply {int ar_stat; TYPE_2__ ar_vers; TYPE_1__ ar_results; int ar_verf; } ;
typedef int enum_t ;
typedef enum accept_stat { ____Placeholder_accept_stat } accept_stat ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;






 int TRUE ;
 int assert (int ) ;
 int stub1 (int *,int ) ;
 int xdr_enum (int *,int *) ;
 int xdr_opaque_auth (int *,int *) ;
 int xdr_rpcvers (int *,int *) ;

bool_t
xdr_accepted_reply(XDR *xdrs, struct accepted_reply *ar)
{
 enum accept_stat *par_stat;

 assert(xdrs != ((void*)0));
 assert(ar != ((void*)0));

 par_stat = &ar->ar_stat;


 if (! xdr_opaque_auth(xdrs, &(ar->ar_verf)))
  return (FALSE);
 if (! xdr_enum(xdrs, (enum_t *) par_stat))
  return (FALSE);
 switch (ar->ar_stat) {

 case 129:
  return ((*(ar->ar_results.proc))(xdrs, ar->ar_results.where));

 case 131:
  if (!xdr_rpcvers(xdrs, &(ar->ar_vers.low)))
   return (FALSE);
  return (xdr_rpcvers(xdrs, &(ar->ar_vers.high)));

 case 133:
 case 128:
 case 132:
 case 130:
  break;
 }
 return (TRUE);
}
