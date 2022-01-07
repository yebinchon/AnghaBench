
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xdrproc_t ;
struct TYPE_4__ {int gids_len; int * gids_val; } ;
struct TYPE_5__ {TYPE_1__ gids; int gid; int uid; } ;
typedef TYPE_2__ unixcred ;
typedef int u_int ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int MAXGIDS ;
 int TRUE ;
 int xdr_array (int *,char**,int *,int ,int,int ) ;
 int xdr_u_int (int *,int *) ;

bool_t
xdr_unixcred(register XDR *xdrs, unixcred *objp)
{
 u_int **pgids_val;

 if (!xdr_u_int(xdrs, &objp->uid))
  return (FALSE);
 if (!xdr_u_int(xdrs, &objp->gid))
  return (FALSE);
 pgids_val = &objp->gids.gids_val;
 if (!xdr_array(xdrs, (char **) pgids_val, (u_int *) &objp->gids.gids_len, MAXGIDS,
  sizeof (u_int), (xdrproc_t) xdr_u_int))
  return (FALSE);
 return (TRUE);
}
