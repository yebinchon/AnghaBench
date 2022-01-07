
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_storage ;
typedef int * krb5_principal ;
typedef int * krb5_keytab ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int * krb5_ccache ;
typedef scalar_t__ gss_cred_id_t ;
typedef TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {int length; int value; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_C_NO_CREDENTIAL ;
 scalar_t__ GSS_S_FAILURE ;
 scalar_t__ _gsskrb5_krb5_import_cred (scalar_t__*,int *,int *,int *,scalar_t__*) ;
 int free (char*) ;
 int krb5_cc_close (int ,int *) ;
 scalar_t__ krb5_cc_resolve (int ,char*,int **) ;
 int krb5_free_principal (int ,int *) ;
 int krb5_kt_close (int ,int *) ;
 scalar_t__ krb5_kt_resolve (int ,char*,int **) ;
 scalar_t__ krb5_parse_name (int ,char*,int **) ;
 scalar_t__ krb5_ret_string (int *,char**) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_mem (int ,int ) ;

__attribute__((used)) static OM_uint32
import_cred(OM_uint32 *minor_status,
     krb5_context context,
            gss_cred_id_t *cred_handle,
            const gss_buffer_t value)
{
    OM_uint32 major_stat;
    krb5_error_code ret;
    krb5_principal keytab_principal = ((void*)0);
    krb5_keytab keytab = ((void*)0);
    krb5_storage *sp = ((void*)0);
    krb5_ccache id = ((void*)0);
    char *str;

    if (cred_handle == ((void*)0) || *cred_handle != GSS_C_NO_CREDENTIAL) {
 *minor_status = 0;
 return GSS_S_FAILURE;
    }

    sp = krb5_storage_from_mem(value->value, value->length);
    if (sp == ((void*)0)) {
 *minor_status = 0;
 return GSS_S_FAILURE;
    }


    ret = krb5_ret_string(sp, &str);
    if (ret) {
 *minor_status = ret;
 major_stat = GSS_S_FAILURE;
 goto out;
    }
    if (str[0]) {
 ret = krb5_cc_resolve(context, str, &id);
 if (ret) {
     *minor_status = ret;
     major_stat = GSS_S_FAILURE;
     goto out;
 }
    }
    free(str);
    str = ((void*)0);


    ret = krb5_ret_string(sp, &str);
    if (ret == 0 && str[0])
 ret = krb5_parse_name(context, str, &keytab_principal);
    if (ret) {
 *minor_status = ret;
 major_stat = GSS_S_FAILURE;
 goto out;
    }
    free(str);
    str = ((void*)0);


    ret = krb5_ret_string(sp, &str);
    if (ret) {
 *minor_status = ret;
 major_stat = GSS_S_FAILURE;
 goto out;
    }
    if (str[0]) {
 ret = krb5_kt_resolve(context, str, &keytab);
 if (ret) {
     *minor_status = ret;
     major_stat = GSS_S_FAILURE;
     goto out;
 }
    }
    free(str);
    str = ((void*)0);

    major_stat = _gsskrb5_krb5_import_cred(minor_status, id, keytab_principal,
        keytab, cred_handle);
out:
    if (id)
 krb5_cc_close(context, id);
    if (keytab_principal)
 krb5_free_principal(context, keytab_principal);
    if (keytab)
 krb5_kt_close(context, keytab);
    if (str)
 free(str);
    if (sp)
 krb5_storage_free(sp);

    return major_stat;
}
