
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_netname; int st_pub_key; int st_priv_key; } ;
typedef TYPE_1__ key_netstarg ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_keybuf (int *,int ) ;
 int xdr_netnamestr (int *,int *) ;

bool_t
xdr_key_netstarg(register XDR *xdrs, key_netstarg *objp)
{

 if (!xdr_keybuf(xdrs, objp->st_priv_key))
  return (FALSE);
 if (!xdr_keybuf(xdrs, objp->st_pub_key))
  return (FALSE);
 if (!xdr_netnamestr(xdrs, &objp->st_netname))
  return (FALSE);
 return (TRUE);
}
