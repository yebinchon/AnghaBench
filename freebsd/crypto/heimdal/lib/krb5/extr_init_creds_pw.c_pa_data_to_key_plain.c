
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_salt ;
typedef int krb5_principal ;
typedef int krb5_keyblock ;
struct TYPE_3__ {int keyseed; int (* keyproc ) (int ,int ,int ,int ,int *,int **) ;} ;
typedef TYPE_1__ krb5_get_init_creds_ctx ;
typedef int krb5_error_code ;
typedef int krb5_enctype ;
typedef int krb5_data ;
typedef int krb5_context ;


 int stub1 (int ,int ,int ,int ,int *,int **) ;

__attribute__((used)) static krb5_error_code
pa_data_to_key_plain(krb5_context context,
       const krb5_principal client,
       krb5_get_init_creds_ctx *ctx,
       krb5_salt salt,
       krb5_data *s2kparams,
       krb5_enctype etype,
       krb5_keyblock **key)
{
    krb5_error_code ret;

    ret = (*ctx->keyproc)(context, etype, ctx->keyseed,
      salt, s2kparams, key);
    return ret;
}
