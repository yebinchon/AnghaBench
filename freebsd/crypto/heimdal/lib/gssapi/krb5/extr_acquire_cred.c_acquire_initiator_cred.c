
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int * krb5_principal ;
typedef int * krb5_keytab ;
typedef int krb5_get_init_creds_opt ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_11__ {int endtime; } ;
struct TYPE_12__ {int * client; TYPE_1__ times; } ;
typedef TYPE_2__ krb5_creds ;
typedef int krb5_context ;
typedef int * krb5_ccache ;
typedef TYPE_3__* gsskrb5_cred ;
typedef int gss_name_t ;
typedef int gss_cred_usage_t ;
typedef scalar_t__ gss_const_OID ;
typedef TYPE_4__* gss_buffer_t ;
typedef int cred ;
struct TYPE_14__ {int value; } ;
struct TYPE_13__ {int * ccache; int lifetime; int * principal; int cred_flags; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ FALSE ;
 int GSS_CF_DESTROY_CRED_ON_RELEASE ;
 int GSS_C_CRED_PASSWORD ;
 scalar_t__ GSS_C_NO_OID ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 scalar_t__ KRB5_NOCREDS_SUPPLIED ;
 scalar_t__ __gsskrb5_ccache_lifetime (scalar_t__*,int ,int *,int *,int *) ;
 scalar_t__ get_keytab (int ,int **) ;
 scalar_t__ gss_oid_equal (scalar_t__,int ) ;
 scalar_t__ krb5_cc_cache_match (int ,int *,int **) ;
 int krb5_cc_close (int ,int *) ;
 scalar_t__ krb5_cc_default (int ,int **) ;
 int krb5_cc_destroy (int ,int *) ;
 scalar_t__ krb5_cc_get_principal (int ,int *,int **) ;
 scalar_t__ krb5_cc_initialize (int ,int *,int *) ;
 scalar_t__ krb5_cc_new_unique (int ,int ,int *,int **) ;
 scalar_t__ krb5_cc_store_cred (int ,int *,TYPE_2__*) ;
 int krb5_cc_type_memory ;
 scalar_t__ krb5_copy_principal (int ,int *,int **) ;
 int krb5_free_cred_contents (int ,TYPE_2__*) ;
 int krb5_free_principal (int ,int *) ;
 scalar_t__ krb5_get_default_principal (int ,int **) ;
 scalar_t__ krb5_get_init_creds_keytab (int ,TYPE_2__*,int *,int *,int ,int *,int *) ;
 scalar_t__ krb5_get_init_creds_opt_alloc (int ,int **) ;
 int krb5_get_init_creds_opt_free (int ,int *) ;
 scalar_t__ krb5_get_init_creds_password (int ,TYPE_2__*,int *,int ,int *,int *,int ,int *,int *) ;
 int krb5_kt_close (int ,int *) ;
 scalar_t__ krb5_principal_compare (int ,int *,int *) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static OM_uint32 acquire_initiator_cred
    (OM_uint32 * minor_status,
     krb5_context context,
     gss_const_OID credential_type,
     const void *credential_data,
     const gss_name_t desired_name,
     OM_uint32 time_req,
     gss_const_OID desired_mech,
     gss_cred_usage_t cred_usage,
     gsskrb5_cred handle
    )
{
    OM_uint32 ret;
    krb5_creds cred;
    krb5_principal def_princ;
    krb5_get_init_creds_opt *opt;
    krb5_ccache ccache;
    krb5_keytab keytab;
    krb5_error_code kret;

    keytab = ((void*)0);
    ccache = ((void*)0);
    def_princ = ((void*)0);
    ret = GSS_S_FAILURE;
    memset(&cred, 0, sizeof(cred));







    if (credential_type != GSS_C_NO_OID &&
 !gss_oid_equal(credential_type, GSS_C_CRED_PASSWORD)) {
 kret = KRB5_NOCREDS_SUPPLIED;
 goto end;
    }

    if (handle->principal) {
 kret = krb5_cc_cache_match (context,
        handle->principal,
        &ccache);
 if (kret == 0) {
     ret = GSS_S_COMPLETE;
     goto found;
 }
    }

    if (ccache == ((void*)0)) {
 kret = krb5_cc_default(context, &ccache);
 if (kret)
     goto end;
    }
    kret = krb5_cc_get_principal(context, ccache, &def_princ);
    if (kret != 0) {

 krb5_cc_close(context, ccache);
 def_princ = ((void*)0);
 kret = 0;
    } else if (handle->principal == ((void*)0)) {
 kret = krb5_copy_principal(context, def_princ, &handle->principal);
 if (kret)
     goto end;
    } else if (handle->principal != ((void*)0) &&
        krb5_principal_compare(context, handle->principal,
          def_princ) == FALSE) {
 krb5_free_principal(context, def_princ);
 def_princ = ((void*)0);
 krb5_cc_close(context, ccache);
 ccache = ((void*)0);
    }
    if (def_princ == ((void*)0)) {



 if (handle->principal == ((void*)0)) {
     kret = krb5_get_default_principal(context, &handle->principal);
     if (kret)
  goto end;
 }
 kret = krb5_get_init_creds_opt_alloc(context, &opt);
 if (kret)
     goto end;
 if (credential_type != GSS_C_NO_OID &&
     gss_oid_equal(credential_type, GSS_C_CRED_PASSWORD)) {
     gss_buffer_t password = (gss_buffer_t)credential_data;



     kret = krb5_get_init_creds_password(context, &cred,
      handle->principal,
      password->value,
      ((void*)0), ((void*)0), 0, ((void*)0), opt);
 } else {
     kret = get_keytab(context, &keytab);
     if (kret) {
  krb5_get_init_creds_opt_free(context, opt);
  goto end;
     }
     kret = krb5_get_init_creds_keytab(context, &cred,
           handle->principal, keytab,
           0, ((void*)0), opt);
 }
 krb5_get_init_creds_opt_free(context, opt);
 if (kret)
     goto end;
 kret = krb5_cc_new_unique(context, krb5_cc_type_memory,
      ((void*)0), &ccache);
 if (kret)
     goto end;
 kret = krb5_cc_initialize(context, ccache, cred.client);
 if (kret) {
     krb5_cc_destroy(context, ccache);
     goto end;
 }
 kret = krb5_cc_store_cred(context, ccache, &cred);
 if (kret) {
     krb5_cc_destroy(context, ccache);
     goto end;
 }
 handle->lifetime = cred.times.endtime;
 handle->cred_flags |= GSS_CF_DESTROY_CRED_ON_RELEASE;
    } else {

 ret = __gsskrb5_ccache_lifetime(minor_status,
     context,
     ccache,
     handle->principal,
     &handle->lifetime);
 if (ret != GSS_S_COMPLETE) {
     krb5_cc_close(context, ccache);
     goto end;
 }
 kret = 0;
    }
 found:
    handle->ccache = ccache;
    ret = GSS_S_COMPLETE;

end:
    if (cred.client != ((void*)0))
 krb5_free_cred_contents(context, &cred);
    if (def_princ != ((void*)0))
 krb5_free_principal(context, def_princ);
    if (keytab != ((void*)0))
 krb5_kt_close(context, keytab);
    if (ret != GSS_S_COMPLETE && kret != 0)
 *minor_status = kret;
    return (ret);
}
