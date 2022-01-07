
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct opaque_auth {scalar_t__ oa_flavor; int oa_length; int oa_base; } ;
struct TYPE_11__ {int * oa_base; int oa_length; } ;
struct audata {TYPE_5__ au_origcred; TYPE_5__ au_shcred; } ;
typedef int bool_t ;
struct TYPE_9__ {int x_op; } ;
typedef TYPE_1__ XDR ;
struct TYPE_10__ {TYPE_5__ ah_cred; } ;
typedef TYPE_2__ AUTH ;


 struct audata* AUTH_PRIVATE (TYPE_2__*) ;
 scalar_t__ AUTH_SHORT ;
 int TRUE ;
 int XDR_DECODE ;
 int XDR_FREE ;
 int assert (int ) ;
 int marshal_new_auth (TYPE_2__*) ;
 int mem_free (int *,int ) ;
 scalar_t__ xdr_opaque_auth (TYPE_1__*,TYPE_5__*) ;
 int xdrmem_create (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static bool_t
authunix_validate(AUTH *auth, struct opaque_auth *verf)
{
 struct audata *au;
 XDR xdrs;

 assert(auth != ((void*)0));
 assert(verf != ((void*)0));

 if (verf->oa_flavor == AUTH_SHORT) {
  au = AUTH_PRIVATE(auth);
  xdrmem_create(&xdrs, verf->oa_base, verf->oa_length,
      XDR_DECODE);

  if (au->au_shcred.oa_base != ((void*)0)) {
   mem_free(au->au_shcred.oa_base,
       au->au_shcred.oa_length);
   au->au_shcred.oa_base = ((void*)0);
  }
  if (xdr_opaque_auth(&xdrs, &au->au_shcred)) {
   auth->ah_cred = au->au_shcred;
  } else {
   xdrs.x_op = XDR_FREE;
   (void)xdr_opaque_auth(&xdrs, &au->au_shcred);
   au->au_shcred.oa_base = ((void*)0);
   auth->ah_cred = au->au_origcred;
  }
  marshal_new_auth(auth);
 }
 return (TRUE);
}
