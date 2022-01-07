
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int * krb5_ccache ;
typedef scalar_t__ int32_t ;
typedef TYPE_1__* gsskrb5_ctx ;
typedef TYPE_2__* gsskrb5_cred ;
typedef int * gss_cred_id_t ;
struct TYPE_5__ {int cred_flags; } ;
struct TYPE_4__ {int flags; int auth_context; int fwd_data; int source; } ;
typedef scalar_t__ OM_uint32 ;


 int GSS_CF_DESTROY_CRED_ON_RELEASE ;
 int GSS_C_DELEG_FLAG ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 int KRB5_AUTH_CONTEXT_DO_TIME ;
 scalar_t__ _gsskrb5_krb5_import_cred (scalar_t__*,int *,int *,int *,int **) ;
 int krb5_auth_con_removeflags (int ,int ,int ,scalar_t__*) ;
 int krb5_auth_con_setflags (int ,int ,scalar_t__) ;
 int krb5_cc_close (int ,int *) ;
 scalar_t__ krb5_cc_default (int ,int **) ;
 int krb5_cc_destroy (int ,int *) ;
 scalar_t__ krb5_cc_initialize (int ,int *,int ) ;
 scalar_t__ krb5_cc_new_unique (int ,int ,int *,int **) ;
 int krb5_cc_type_memory ;
 scalar_t__ krb5_rd_cred2 (int ,int ,int *,int *) ;

__attribute__((used)) static OM_uint32
gsskrb5_accept_delegated_token
(OM_uint32 * minor_status,
 gsskrb5_ctx ctx,
 krb5_context context,
 gss_cred_id_t * delegated_cred_handle
    )
{
    krb5_ccache ccache = ((void*)0);
    krb5_error_code kret;
    int32_t ac_flags, ret = GSS_S_COMPLETE;

    *minor_status = 0;


    if (delegated_cred_handle == ((void*)0)) {
 kret = krb5_cc_default (context, &ccache);
    } else {
 *delegated_cred_handle = ((void*)0);
 kret = krb5_cc_new_unique (context, krb5_cc_type_memory,
       ((void*)0), &ccache);
    }
    if (kret) {
 ctx->flags &= ~GSS_C_DELEG_FLAG;
 goto out;
    }

    kret = krb5_cc_initialize(context, ccache, ctx->source);
    if (kret) {
 ctx->flags &= ~GSS_C_DELEG_FLAG;
 goto out;
    }

    krb5_auth_con_removeflags(context,
         ctx->auth_context,
         KRB5_AUTH_CONTEXT_DO_TIME,
         &ac_flags);
    kret = krb5_rd_cred2(context,
    ctx->auth_context,
    ccache,
    &ctx->fwd_data);
    krb5_auth_con_setflags(context,
      ctx->auth_context,
      ac_flags);
    if (kret) {
 ctx->flags &= ~GSS_C_DELEG_FLAG;
 ret = GSS_S_FAILURE;
 *minor_status = kret;
 goto out;
    }

    if (delegated_cred_handle) {
 gsskrb5_cred handle;

 ret = _gsskrb5_krb5_import_cred(minor_status,
     ccache,
     ((void*)0),
     ((void*)0),
     delegated_cred_handle);
 if (ret != GSS_S_COMPLETE)
     goto out;

 handle = (gsskrb5_cred) *delegated_cred_handle;

 handle->cred_flags |= GSS_CF_DESTROY_CRED_ON_RELEASE;
 krb5_cc_close(context, ccache);
 ccache = ((void*)0);
    }

out:
    if (ccache) {

 if (delegated_cred_handle == ((void*)0))
     krb5_cc_close(context, ccache);
 else
     krb5_cc_destroy(context, ccache);
    }
    return ret;
}
