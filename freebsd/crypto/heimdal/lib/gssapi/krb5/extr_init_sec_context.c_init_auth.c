
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_enctype ;
struct TYPE_15__ {int length; scalar_t__ data; } ;
typedef TYPE_3__ krb5_data ;
typedef int krb5_context ;
typedef TYPE_4__* gsskrb5_ctx ;
typedef TYPE_5__* gsskrb5_cred ;
typedef int gss_name_t ;
typedef int gss_buffer_t ;
typedef int gss_OID ;
struct TYPE_17__ {int * enctypes; int * ccache; } ;
struct TYPE_16__ {int more_flags; int * ccache; TYPE_2__* kcred; int auth_context; int lifetime; int source; } ;
struct TYPE_13__ {int endtime; } ;
struct TYPE_14__ {int session; TYPE_1__ times; } ;
typedef scalar_t__ OM_uint32 ;


 int CLOSE_CCACHE ;
 int GSS_KRB5_MECHANISM ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_CONTEXT_EXPIRED ;
 scalar_t__ GSS_S_FAILURE ;
 scalar_t__ _gss_DES3_get_mic_compat (scalar_t__*,TYPE_4__*,int ) ;
 scalar_t__ _gsskrb5_lifetime_left (scalar_t__*,int ,int ,scalar_t__*) ;
 scalar_t__ gsskrb5_get_creds (scalar_t__*,int ,int *,TYPE_4__*,int ,int,scalar_t__,scalar_t__*) ;
 scalar_t__ krb5_auth_con_generatelocalsubkey (int ,int ,int *) ;
 int krb5_auth_con_setkey (int ,int ,int *) ;
 int krb5_cc_close (int ,int *) ;
 scalar_t__ krb5_cc_default (int ,int **) ;
 scalar_t__ krb5_cc_get_config (int ,int *,int *,char*,TYPE_3__*) ;
 scalar_t__ krb5_cc_get_principal (int ,int *,int *) ;
 int krb5_data_free (TYPE_3__*) ;
 int krb5_data_zero (TYPE_3__*) ;
 int krb5_set_default_in_tkt_etypes (int ,int *) ;

__attribute__((used)) static OM_uint32
init_auth
(OM_uint32 * minor_status,
 gsskrb5_cred cred,
 gsskrb5_ctx ctx,
 krb5_context context,
 gss_name_t name,
 const gss_OID mech_type,
 OM_uint32 req_flags,
 OM_uint32 time_req,
 const gss_buffer_t input_token,
 gss_OID * actual_mech_type,
 gss_buffer_t output_token,
 OM_uint32 * ret_flags,
 OM_uint32 * time_rec
    )
{
    OM_uint32 ret = GSS_S_FAILURE;
    krb5_error_code kret;
    krb5_data outbuf;
    krb5_data fwd_data;
    OM_uint32 lifetime_rec;
    int allow_dns = 1;

    krb5_data_zero(&outbuf);
    krb5_data_zero(&fwd_data);

    *minor_status = 0;

    if (actual_mech_type)
 *actual_mech_type = GSS_KRB5_MECHANISM;

    if (cred == ((void*)0)) {
 kret = krb5_cc_default (context, &ctx->ccache);
 if (kret) {
     *minor_status = kret;
     ret = GSS_S_FAILURE;
     goto failure;
 }
 ctx->more_flags |= CLOSE_CCACHE;
    } else
 ctx->ccache = cred->ccache;

    kret = krb5_cc_get_principal (context, ctx->ccache, &ctx->source);
    if (kret) {
 *minor_status = kret;
 ret = GSS_S_FAILURE;
 goto failure;
    }







    {
 krb5_enctype *enctypes = ((void*)0);

 if (cred && cred->enctypes)
     enctypes = cred->enctypes;
 krb5_set_default_in_tkt_etypes(context, enctypes);
    }


    kret = krb5_cc_get_config(context, ctx->ccache, ((void*)0),
         "realm-config", &outbuf);
    if (kret == 0) {

 if (outbuf.length < 1 || ((((unsigned char *)outbuf.data)[0]) & 2))
     allow_dns = 0;
 krb5_data_free(&outbuf);
    }







    ret = gsskrb5_get_creds(minor_status, context, ctx->ccache,
       ctx, name, 0, time_req,
       time_rec);
    if (ret && allow_dns)
 ret = gsskrb5_get_creds(minor_status, context, ctx->ccache,
    ctx, name, 1, time_req,
    time_rec);
    if (ret)
 goto failure;

    ctx->lifetime = ctx->kcred->times.endtime;

    ret = _gss_DES3_get_mic_compat(minor_status, ctx, context);
    if (ret)
 goto failure;

    ret = _gsskrb5_lifetime_left(minor_status,
     context,
     ctx->lifetime,
     &lifetime_rec);
    if (ret)
 goto failure;

    if (lifetime_rec == 0) {
 *minor_status = 0;
 ret = GSS_S_CONTEXT_EXPIRED;
 goto failure;
    }

    krb5_auth_con_setkey(context,
    ctx->auth_context,
    &ctx->kcred->session);

    kret = krb5_auth_con_generatelocalsubkey(context,
          ctx->auth_context,
          &ctx->kcred->session);
    if(kret) {
 *minor_status = kret;
 ret = GSS_S_FAILURE;
 goto failure;
    }

    return GSS_S_COMPLETE;

failure:
    if (ctx->ccache && (ctx->more_flags & CLOSE_CCACHE))
 krb5_cc_close(context, ctx->ccache);
    ctx->ccache = ((void*)0);

    return ret;

}
