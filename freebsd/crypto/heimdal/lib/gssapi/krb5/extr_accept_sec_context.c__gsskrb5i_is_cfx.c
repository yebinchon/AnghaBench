
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int keytype; } ;
typedef TYPE_2__ krb5_keyblock ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef TYPE_3__* gsskrb5_ctx ;
struct TYPE_8__ {int crypto; int more_flags; TYPE_1__* auth_context; } ;
struct TYPE_6__ {TYPE_2__* remote_subkey; TYPE_2__* local_subkey; TYPE_2__* keyblock; } ;


 int ACCEPTOR_SUBKEY ;
 int IS_CFX ;
 int krb5_crypto_destroy (int ,int ) ;
 int krb5_crypto_init (int ,TYPE_2__*,int ,int *) ;

void
_gsskrb5i_is_cfx(krb5_context context, gsskrb5_ctx ctx, int acceptor)
{
    krb5_error_code ret;
    krb5_keyblock *key;

    if (acceptor) {
 if (ctx->auth_context->local_subkey)
     key = ctx->auth_context->local_subkey;
 else
     key = ctx->auth_context->remote_subkey;
    } else {
 if (ctx->auth_context->remote_subkey)
     key = ctx->auth_context->remote_subkey;
 else
     key = ctx->auth_context->local_subkey;
    }
    if (key == ((void*)0))
 key = ctx->auth_context->keyblock;

    if (key == ((void*)0))
 return;

    switch (key->keytype) {
    case 131:
    case 130:
    case 129:
    case 133:
    case 128:
    case 132:
    case 135:
    case 134:
 break;
    default :
        ctx->more_flags |= IS_CFX;

 if ((acceptor && ctx->auth_context->local_subkey) ||
     (!acceptor && ctx->auth_context->remote_subkey))
     ctx->more_flags |= ACCEPTOR_SUBKEY;
 break;
    }
    if (ctx->crypto)
        krb5_crypto_destroy(context, ctx->crypto);
    ret = krb5_crypto_init(context, key, 0, &ctx->crypto);
}
