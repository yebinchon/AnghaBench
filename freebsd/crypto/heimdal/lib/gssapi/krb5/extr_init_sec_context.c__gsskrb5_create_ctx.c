
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef TYPE_1__* gsskrb5_ctx ;
typedef int * gss_ctx_id_t ;
typedef int gss_channel_bindings_t ;
typedef enum gss_ctx_id_t_state { ____Placeholder_gss_ctx_id_t_state } gss_ctx_id_t_state ;
struct TYPE_3__ {int state; int * deleg_auth_context; int * auth_context; int ctx_id_mutex; int * crypto; int * order; int lifetime; int fwd_data; int * ticket; int * service_keyblock; scalar_t__ more_flags; scalar_t__ flags; int * ccache; int * kcred; int * target; int * source; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ ENOMEM ;
 int GSS_C_INDEFINITE ;
 scalar_t__ GSS_S_BAD_BINDINGS ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 int HEIMDAL_MUTEX_destroy (int *) ;
 int HEIMDAL_MUTEX_init (int *) ;
 int KRB5_AUTH_CONTEXT_CLEAR_FORWARDED_CRED ;
 int KRB5_AUTH_CONTEXT_DO_SEQUENCE ;
 int krb5_auth_con_addflags (int ,int *,int,int *) ;
 int krb5_auth_con_free (int ,int *) ;
 scalar_t__ krb5_auth_con_init (int ,int **) ;
 int krb5_data_zero (int *) ;
 TYPE_1__* malloc (int) ;
 scalar_t__ set_addresses (int ,int *,int const) ;

OM_uint32
_gsskrb5_create_ctx(
        OM_uint32 * minor_status,
 gss_ctx_id_t * context_handle,
 krb5_context context,
  const gss_channel_bindings_t input_chan_bindings,
  enum gss_ctx_id_t_state state)
{
    krb5_error_code kret;
    gsskrb5_ctx ctx;

    *context_handle = ((void*)0);

    ctx = malloc(sizeof(*ctx));
    if (ctx == ((void*)0)) {
 *minor_status = ENOMEM;
 return GSS_S_FAILURE;
    }
    ctx->auth_context = ((void*)0);
    ctx->deleg_auth_context = ((void*)0);
    ctx->source = ((void*)0);
    ctx->target = ((void*)0);
    ctx->kcred = ((void*)0);
    ctx->ccache = ((void*)0);
    ctx->state = state;
    ctx->flags = 0;
    ctx->more_flags = 0;
    ctx->service_keyblock = ((void*)0);
    ctx->ticket = ((void*)0);
    krb5_data_zero(&ctx->fwd_data);
    ctx->lifetime = GSS_C_INDEFINITE;
    ctx->order = ((void*)0);
    ctx->crypto = ((void*)0);
    HEIMDAL_MUTEX_init(&ctx->ctx_id_mutex);

    kret = krb5_auth_con_init (context, &ctx->auth_context);
    if (kret) {
 *minor_status = kret;
 HEIMDAL_MUTEX_destroy(&ctx->ctx_id_mutex);
 return GSS_S_FAILURE;
    }

    kret = krb5_auth_con_init (context, &ctx->deleg_auth_context);
    if (kret) {
 *minor_status = kret;
 krb5_auth_con_free(context, ctx->auth_context);
 HEIMDAL_MUTEX_destroy(&ctx->ctx_id_mutex);
 return GSS_S_FAILURE;
    }

    kret = set_addresses(context, ctx->auth_context, input_chan_bindings);
    if (kret) {
 *minor_status = kret;

 krb5_auth_con_free(context, ctx->auth_context);
 krb5_auth_con_free(context, ctx->deleg_auth_context);

 HEIMDAL_MUTEX_destroy(&ctx->ctx_id_mutex);

 return GSS_S_BAD_BINDINGS;
    }

    kret = set_addresses(context, ctx->deleg_auth_context, input_chan_bindings);
    if (kret) {
 *minor_status = kret;

 krb5_auth_con_free(context, ctx->auth_context);
 krb5_auth_con_free(context, ctx->deleg_auth_context);

 HEIMDAL_MUTEX_destroy(&ctx->ctx_id_mutex);

 return GSS_S_BAD_BINDINGS;
    }





    krb5_auth_con_addflags(context,
      ctx->auth_context,
      KRB5_AUTH_CONTEXT_DO_SEQUENCE |
      KRB5_AUTH_CONTEXT_CLEAR_FORWARDED_CRED,
      ((void*)0));





    krb5_auth_con_addflags(context,
      ctx->deleg_auth_context,
      KRB5_AUTH_CONTEXT_DO_SEQUENCE |
      KRB5_AUTH_CONTEXT_CLEAR_FORWARDED_CRED,
      ((void*)0));

    *context_handle = (gss_ctx_id_t)ctx;

    return GSS_S_COMPLETE;
}
