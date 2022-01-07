
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef int gss_cred_id_t ;
typedef TYPE_2__* gss_buffer_set_t ;
struct TYPE_7__ {int count; TYPE_1__* elements; } ;
struct TYPE_6__ {scalar_t__ value; scalar_t__ length; } ;
typedef int OM_uint32 ;


 int EINVAL ;
 int ENOMEM ;
 TYPE_2__* GSS_C_NO_BUFFER_SET ;
 int GSS_KRB5_COPY_CCACHE_X ;
 int GSS_S_FAILURE ;
 int asprintf (char**,char*,int,char*) ;
 int free (char*) ;
 int gss_inquire_cred_by_oid (int*,int ,int ,TYPE_2__**) ;
 int gss_release_buffer_set (int*,TYPE_2__**) ;
 int krb5_cc_close (int ,int ) ;
 int krb5_cc_copy_cache (int ,int ,int ) ;
 int krb5_cc_resolve (int ,char*,int *) ;
 int krb5_free_context (int ) ;
 int krb5_init_context (int *) ;

OM_uint32
gss_krb5_copy_ccache(OM_uint32 *minor_status,
       gss_cred_id_t cred,
       krb5_ccache out)
{
    gss_buffer_set_t data_set = GSS_C_NO_BUFFER_SET;
    krb5_context context;
    krb5_error_code kret;
    krb5_ccache id;
    OM_uint32 ret;
    char *str;

    ret = gss_inquire_cred_by_oid(minor_status,
      cred,
      GSS_KRB5_COPY_CCACHE_X,
      &data_set);
    if (ret)
 return ret;

    if (data_set == GSS_C_NO_BUFFER_SET || data_set->count != 1) {
 gss_release_buffer_set(minor_status, &data_set);
 *minor_status = EINVAL;
 return GSS_S_FAILURE;
    }

    kret = krb5_init_context(&context);
    if (kret) {
 *minor_status = kret;
 gss_release_buffer_set(minor_status, &data_set);
 return GSS_S_FAILURE;
    }

    kret = asprintf(&str, "%.*s", (int)data_set->elements[0].length,
      (char *)data_set->elements[0].value);
    gss_release_buffer_set(minor_status, &data_set);
    if (kret == -1) {
 *minor_status = ENOMEM;
 return GSS_S_FAILURE;
    }

    kret = krb5_cc_resolve(context, str, &id);
    free(str);
    if (kret) {
 *minor_status = kret;
 return GSS_S_FAILURE;
    }

    kret = krb5_cc_copy_cache(context, id, out);
    krb5_cc_close(context, id);
    krb5_free_context(context);
    if (kret) {
 *minor_status = kret;
 return GSS_S_FAILURE;
    }

    return ret;
}
