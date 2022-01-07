
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_data ;
typedef int krb5_context ;
typedef scalar_t__ kadm5_ret_t ;
struct TYPE_3__ {int mask; int realm; } ;
typedef TYPE_1__ kadm5_config_params ;
typedef int int32_t ;


 scalar_t__ ENOMEM ;
 int KADM5_CONFIG_REALM ;
 scalar_t__ krb5_ret_int32 (int *,int*) ;
 scalar_t__ krb5_ret_string (int *,int *) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_data (int *) ;

kadm5_ret_t
_kadm5_unmarshal_params(krb5_context context,
   krb5_data *in,
   kadm5_config_params *params)
{
    krb5_error_code ret;
    krb5_storage *sp;
    int32_t mask;

    sp = krb5_storage_from_data(in);
    if (sp == ((void*)0))
 return ENOMEM;

    ret = krb5_ret_int32(sp, &mask);
    if (ret)
 goto out;
    params->mask = mask;

    if(params->mask & KADM5_CONFIG_REALM)
 ret = krb5_ret_string(sp, &params->realm);
 out:
    krb5_storage_free(sp);

    return ret;
}
