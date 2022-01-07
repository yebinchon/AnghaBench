
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_storage ;
typedef int krb5_data ;
typedef int krb5_context ;
typedef int kadm5_ret_t ;
struct TYPE_3__ {int mask; int realm; } ;
typedef TYPE_1__ kadm5_config_params ;


 int KADM5_CONFIG_REALM ;
 int * krb5_storage_emem () ;
 int krb5_storage_free (int *) ;
 int krb5_storage_to_data (int *,int *) ;
 int krb5_store_int32 (int *,int) ;
 int krb5_store_string (int *,int ) ;

kadm5_ret_t
_kadm5_marshal_params(krb5_context context,
        kadm5_config_params *params,
        krb5_data *out)
{
    krb5_storage *sp = krb5_storage_emem();

    krb5_store_int32(sp, params->mask & (KADM5_CONFIG_REALM));

    if(params->mask & KADM5_CONFIG_REALM)
 krb5_store_string(sp, params->realm);
    krb5_storage_to_data(sp, out);
    krb5_storage_free(sp);

    return 0;
}
