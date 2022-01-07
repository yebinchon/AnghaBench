
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_keyblock ;
typedef int krb5_context ;
typedef TYPE_1__* gsskrb5_ctx ;
struct TYPE_5__ {int more_flags; } ;
typedef int OM_uint32 ;


 int ACCEPTOR_SUBKEY ;
 int GSS_KRB5_S_KG_NO_SUBKEY ;
 int _gsskrb5i_get_acceptor_subkey (TYPE_1__* const,int ,int **) ;
 int _gsskrb5i_get_initiator_subkey (TYPE_1__* const,int ,int **) ;
 int krb5_set_error_message (int ,int ,char*) ;

OM_uint32
_gsskrb5i_get_token_key(const gsskrb5_ctx ctx,
   krb5_context context,
   krb5_keyblock **key)
{
    _gsskrb5i_get_acceptor_subkey(ctx, context, key);
    if(*key == ((void*)0)) {




 if ((ctx->more_flags & ACCEPTOR_SUBKEY) == 0)
     _gsskrb5i_get_initiator_subkey(ctx, context, key);
    }
    if (*key == ((void*)0)) {
 krb5_set_error_message(context, 0, "No token key available");
 return GSS_KRB5_S_KG_NO_SUBKEY;
    }
    return 0;
}
