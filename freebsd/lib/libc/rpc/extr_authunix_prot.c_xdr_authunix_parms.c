
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef int u_int ;
struct authunix_parms {int aup_len; int aup_gid; int aup_uid; int aup_machname; int aup_time; int * aup_gids; } ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int MAX_MACHINE_NAME ;
 int NGRPS ;
 int TRUE ;
 int assert (int ) ;
 scalar_t__ xdr_array (int *,char**,int *,int ,int,int ) ;
 scalar_t__ xdr_string (int *,int *,int ) ;
 scalar_t__ xdr_u_int (int *,int *) ;
 scalar_t__ xdr_u_long (int *,int *) ;

bool_t
xdr_authunix_parms(XDR *xdrs, struct authunix_parms *p)
{
 u_int **paup_gids;

 assert(xdrs != ((void*)0));
 assert(p != ((void*)0));

 paup_gids = &p->aup_gids;

 if (xdr_u_long(xdrs, &(p->aup_time)) &&
     xdr_string(xdrs, &(p->aup_machname), MAX_MACHINE_NAME) &&
     xdr_u_int(xdrs, &(p->aup_uid)) &&
     xdr_u_int(xdrs, &(p->aup_gid)) &&
     xdr_array(xdrs, (char **) paup_gids,
     &(p->aup_len), NGRPS, sizeof(u_int), (xdrproc_t)xdr_u_int) ) {
  return (TRUE);
 }
 return (FALSE);
}
