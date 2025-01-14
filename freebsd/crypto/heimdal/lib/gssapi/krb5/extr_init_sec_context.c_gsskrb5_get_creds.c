
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int this_cred ;
typedef scalar_t__ krb5_timestamp ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_12__ {int keytype; } ;
struct TYPE_11__ {scalar_t__ endtime; } ;
struct TYPE_14__ {TYPE_2__ session; TYPE_1__ times; int * server; int client; } ;
typedef TYPE_4__ krb5_creds ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef TYPE_5__* gsskrb5_ctx ;
typedef int gss_name_t ;
struct TYPE_13__ {int endtime; } ;
struct TYPE_16__ {TYPE_3__ times; } ;
struct TYPE_15__ {int lifetime; TYPE_8__* kcred; int * target; int source; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_C_INDEFINITE ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_CONTEXT_EXPIRED ;
 scalar_t__ GSS_S_FAILURE ;
 int KEYTYPE_NULL ;
 scalar_t__ _gsskrb5_canon_name (scalar_t__*,int ,int,int ,int const,int **) ;
 scalar_t__ _gsskrb5_lifetime_left (scalar_t__*,int ,int ,scalar_t__*) ;
 int krb5_free_creds (int ,TYPE_8__*) ;
 int krb5_free_principal (int ,int *) ;
 scalar_t__ krb5_get_credentials (int ,int ,int ,TYPE_4__*,TYPE_8__**) ;
 int krb5_timeofday (int ,scalar_t__*) ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static OM_uint32
gsskrb5_get_creds(
        OM_uint32 * minor_status,
 krb5_context context,
 krb5_ccache ccache,
 gsskrb5_ctx ctx,
 const gss_name_t target_name,
 int use_dns,
 OM_uint32 time_req,
 OM_uint32 * time_rec)
{
    OM_uint32 ret;
    krb5_error_code kret;
    krb5_creds this_cred;
    OM_uint32 lifetime_rec;

    if (ctx->target) {
 krb5_free_principal(context, ctx->target);
 ctx->target = ((void*)0);
    }
    if (ctx->kcred) {
 krb5_free_creds(context, ctx->kcred);
 ctx->kcred = ((void*)0);
    }

    ret = _gsskrb5_canon_name(minor_status, context, use_dns,
         ctx->source, target_name, &ctx->target);
    if (ret)
 return ret;

    memset(&this_cred, 0, sizeof(this_cred));
    this_cred.client = ctx->source;
    this_cred.server = ctx->target;

    if (time_req && time_req != GSS_C_INDEFINITE) {
 krb5_timestamp ts;

 krb5_timeofday (context, &ts);
 this_cred.times.endtime = ts + time_req;
    } else {
 this_cred.times.endtime = 0;
    }

    this_cred.session.keytype = KEYTYPE_NULL;

    kret = krb5_get_credentials(context,
    0,
    ccache,
    &this_cred,
    &ctx->kcred);
    if (kret) {
 *minor_status = kret;
 return GSS_S_FAILURE;
    }

    ctx->lifetime = ctx->kcred->times.endtime;

    ret = _gsskrb5_lifetime_left(minor_status, context,
     ctx->lifetime, &lifetime_rec);
    if (ret) return ret;

    if (lifetime_rec == 0) {
 *minor_status = 0;
 return GSS_S_CONTEXT_EXPIRED;
    }

    if (time_rec) *time_rec = lifetime_rec;

    return GSS_S_COMPLETE;
}
