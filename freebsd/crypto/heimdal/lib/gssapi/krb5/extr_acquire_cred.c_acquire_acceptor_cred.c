
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_kt_cursor ;
typedef int krb5_keytab_entry ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef TYPE_1__* gsskrb5_cred ;
typedef int gss_name_t ;
typedef int gss_cred_usage_t ;
typedef scalar_t__ gss_const_OID ;
struct TYPE_3__ {int * keytab; scalar_t__ principal; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ EINVAL ;
 scalar_t__ GSS_C_NO_OID ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 scalar_t__ get_keytab (int ,int **) ;
 int krb5_kt_close (int ,int *) ;
 int krb5_kt_end_seq_get (int ,int *,int *) ;
 int krb5_kt_free_entry (int ,int *) ;
 scalar_t__ krb5_kt_get_entry (int ,int *,scalar_t__,int ,int ,int *) ;
 scalar_t__ krb5_kt_next_entry (int ,int *,int *,int *) ;
 scalar_t__ krb5_kt_start_seq_get (int ,int *,int *) ;

__attribute__((used)) static OM_uint32 acquire_acceptor_cred
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
    krb5_error_code kret;

    ret = GSS_S_FAILURE;

    if (credential_type != GSS_C_NO_OID) {
 kret = EINVAL;
 goto end;
    }

    kret = get_keytab(context, &handle->keytab);
    if (kret)
 goto end;


    if (handle->principal) {
 krb5_keytab_entry entry;

 kret = krb5_kt_get_entry(context, handle->keytab,
     handle->principal, 0, 0, &entry);
 if (kret)
     goto end;
 krb5_kt_free_entry(context, &entry);
 ret = GSS_S_COMPLETE;
    } else {




 krb5_keytab_entry tmp;
 krb5_kt_cursor c;

 kret = krb5_kt_start_seq_get (context, handle->keytab, &c);
 if (kret)
     goto end;
 if (krb5_kt_next_entry(context, handle->keytab, &tmp, &c) == 0) {
     krb5_kt_free_entry(context, &tmp);
     ret = GSS_S_COMPLETE;
 }
 krb5_kt_end_seq_get (context, handle->keytab, &c);
    }
end:
    if (ret != GSS_S_COMPLETE) {
 if (handle->keytab != ((void*)0))
     krb5_kt_close(context, handle->keytab);
 if (kret != 0) {
     *minor_status = kret;
 }
    }
    return (ret);
}
