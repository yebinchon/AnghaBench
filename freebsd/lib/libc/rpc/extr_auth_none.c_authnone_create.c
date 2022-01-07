
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int ah_verf; int ah_cred; int ah_ops; } ;
struct authnone_private {TYPE_1__ no_client; int mcnt; int marshalled_client; } ;
typedef int XDR ;
typedef TYPE_1__ AUTH ;


 scalar_t__ MAX_MARSHAL_SIZE ;
 int XDR_DESTROY (int *) ;
 int XDR_ENCODE ;
 int XDR_GETPOS (int *) ;
 int _null_auth ;
 int authnone_lock ;
 int authnone_ops () ;
 struct authnone_private* authnone_private ;
 struct authnone_private* calloc (int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xdr_opaque_auth (int *,int *) ;
 int xdrmem_create (int *,int ,int ,int ) ;

AUTH *
authnone_create(void)
{
 struct authnone_private *ap = authnone_private;
 XDR xdr_stream;
 XDR *xdrs;

 mutex_lock(&authnone_lock);
 if (ap == ((void*)0)) {
  ap = calloc(1, sizeof (*ap));
  if (ap == ((void*)0)) {
   mutex_unlock(&authnone_lock);
   return (0);
  }
  authnone_private = ap;
 }
 if (!ap->mcnt) {
  ap->no_client.ah_cred = ap->no_client.ah_verf = _null_auth;
  ap->no_client.ah_ops = authnone_ops();
  xdrs = &xdr_stream;
  xdrmem_create(xdrs, ap->marshalled_client,
      (u_int)MAX_MARSHAL_SIZE, XDR_ENCODE);
  (void)xdr_opaque_auth(xdrs, &ap->no_client.ah_cred);
  (void)xdr_opaque_auth(xdrs, &ap->no_client.ah_verf);
  ap->mcnt = XDR_GETPOS(xdrs);
  XDR_DESTROY(xdrs);
 }
 mutex_unlock(&authnone_lock);
 return (&ap->no_client);
}
