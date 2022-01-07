
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int krb5_keytype ;
struct TYPE_14__ {int keytype; } ;
typedef TYPE_1__ krb5_keyblock ;
typedef int krb5_context ;
typedef TYPE_2__* gsskrb5_ctx ;
typedef int gss_qop_t ;
typedef int gss_buffer_t ;
struct TYPE_15__ {int more_flags; int ctx_id_mutex; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_FAILURE ;
 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int IS_CFX ;




 scalar_t__ _gssapi_verify_mic_arcfour (scalar_t__*,TYPE_2__* const,int ,int const,int const,int *,TYPE_1__*,char const*) ;
 scalar_t__ _gssapi_verify_mic_cfx (scalar_t__*,TYPE_2__* const,int ,int const,int const,int *) ;
 scalar_t__ _gsskrb5i_get_token_key (TYPE_2__* const,int ,TYPE_1__**) ;
 int abort () ;
 int krb5_enctype_to_keytype (int ,int ,int*) ;
 int krb5_free_keyblock (int ,TYPE_1__*) ;
 scalar_t__ verify_mic_des (scalar_t__*,TYPE_2__* const,int ,int const,int const,int *,TYPE_1__*,char const*) ;
 scalar_t__ verify_mic_des3 (scalar_t__*,TYPE_2__* const,int ,int const,int const,int *,TYPE_1__*,char const*) ;

OM_uint32
_gsskrb5_verify_mic_internal
           (OM_uint32 * minor_status,
            const gsskrb5_ctx ctx,
     krb5_context context,
            const gss_buffer_t message_buffer,
            const gss_buffer_t token_buffer,
            gss_qop_t * qop_state,
     const char * type
     )
{
    krb5_keyblock *key;
    OM_uint32 ret;
    krb5_keytype keytype;

    if (ctx->more_flags & IS_CFX)
        return _gssapi_verify_mic_cfx (minor_status, ctx,
           context, message_buffer, token_buffer,
           qop_state);

    HEIMDAL_MUTEX_lock(&ctx->ctx_id_mutex);
    ret = _gsskrb5i_get_token_key(ctx, context, &key);
    HEIMDAL_MUTEX_unlock(&ctx->ctx_id_mutex);
    if (ret) {
 *minor_status = ret;
 return GSS_S_FAILURE;
    }
    *minor_status = 0;
    krb5_enctype_to_keytype (context, key->keytype, &keytype);
    switch (keytype) {
    case 129 :





      ret = GSS_S_FAILURE;

 break;
    case 128 :
 ret = verify_mic_des3 (minor_status, ctx, context,
          message_buffer, token_buffer, qop_state, key,
          type);
 break;
    case 131 :
    case 130 :
 ret = _gssapi_verify_mic_arcfour (minor_status, ctx,
       context,
       message_buffer, token_buffer,
       qop_state, key, type);
 break;
    default :
        abort();
    }
    krb5_free_keyblock (context, key);

    return ret;
}
