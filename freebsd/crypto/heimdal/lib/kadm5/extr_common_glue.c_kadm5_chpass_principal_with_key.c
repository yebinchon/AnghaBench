
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef int krb5_key_data ;
typedef int kadm5_ret_t ;


 int __CALL (int ,void*) ;
 int chpass_principal_with_key ;

kadm5_ret_t
kadm5_chpass_principal_with_key(void *server_handle,
    krb5_principal princ,
    int n_key_data,
    krb5_key_data *key_data)
{
    return __CALL(chpass_principal_with_key,
    (server_handle, princ, n_key_data, key_data));
}
