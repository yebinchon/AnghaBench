
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int krb5_storage ;
typedef int krb5_error_code ;
struct TYPE_6__ {int length; int data; } ;
typedef TYPE_1__ krb5_data ;
typedef int int32_t ;
typedef int gss_cred_id_t ;
struct TYPE_7__ {int length; int value; } ;
typedef TYPE_2__ gss_buffer_desc ;
typedef int OM_uint32 ;


 int ENOMEM ;
 int GSS_KRB5_SET_ALLOWABLE_ENCTYPES_X ;
 int GSS_S_FAILURE ;
 int gss_set_cred_option (int*,int *,int ,TYPE_2__*) ;
 int krb5_data_free (TYPE_1__*) ;
 int * krb5_storage_emem () ;
 int krb5_storage_free (int *) ;
 int krb5_storage_to_data (int *,TYPE_1__*) ;
 int krb5_store_int32 (int *,int ) ;

OM_uint32
gss_krb5_set_allowable_enctypes(OM_uint32 *minor_status,
    gss_cred_id_t cred,
    OM_uint32 num_enctypes,
    int32_t *enctypes)
{
    krb5_error_code ret;
    OM_uint32 maj_status;
    gss_buffer_desc buffer;
    krb5_storage *sp;
    krb5_data data;
    int i;

    sp = krb5_storage_emem();
    if (sp == ((void*)0)) {
 *minor_status = ENOMEM;
 maj_status = GSS_S_FAILURE;
 goto out;
    }

    for (i = 0; i < num_enctypes; i++) {
 ret = krb5_store_int32(sp, enctypes[i]);
 if (ret) {
     *minor_status = ret;
     maj_status = GSS_S_FAILURE;
     goto out;
 }
    }

    ret = krb5_storage_to_data(sp, &data);
    if (ret) {
 *minor_status = ret;
 maj_status = GSS_S_FAILURE;
 goto out;
    }

    buffer.value = data.data;
    buffer.length = data.length;

    maj_status = gss_set_cred_option(minor_status,
         &cred,
         GSS_KRB5_SET_ALLOWABLE_ENCTYPES_X,
         &buffer);
    krb5_data_free(&data);
out:
    if (sp)
 krb5_storage_free(sp);
    return maj_status;
}
