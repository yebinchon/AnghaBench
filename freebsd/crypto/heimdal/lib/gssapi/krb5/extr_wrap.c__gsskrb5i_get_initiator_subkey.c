
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef TYPE_1__* gsskrb5_ctx ;
struct TYPE_3__ {int more_flags; int auth_context; } ;


 scalar_t__ GSS_KRB5_S_KG_NO_SUBKEY ;
 int LOCAL ;
 scalar_t__ krb5_auth_con_getkey (int ,int ,int **) ;
 scalar_t__ krb5_auth_con_getlocalsubkey (int ,int ,int **) ;
 scalar_t__ krb5_auth_con_getremotesubkey (int ,int ,int **) ;
 int krb5_set_error_message (int ,int ,char*) ;

krb5_error_code
_gsskrb5i_get_initiator_subkey(const gsskrb5_ctx ctx,
          krb5_context context,
          krb5_keyblock **key)
{
    krb5_error_code ret;
    *key = ((void*)0);

    if (ctx->more_flags & LOCAL) {
 ret = krb5_auth_con_getlocalsubkey(context,
         ctx->auth_context,
         key);
    } else {
 ret = krb5_auth_con_getremotesubkey(context,
          ctx->auth_context,
          key);
    }
    if (ret == 0 && *key == ((void*)0))
 ret = krb5_auth_con_getkey(context,
       ctx->auth_context,
       key);
    if (ret == 0 && *key == ((void*)0)) {
 krb5_set_error_message(context, 0, "No initiator subkey available");
 return GSS_KRB5_S_KG_NO_SUBKEY;
    }
    return ret;
}
