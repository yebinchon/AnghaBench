
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef int krb5_keyblock ;
typedef int kadm5_ret_t ;


 int __CALL (int ,void*) ;
 int randkey_principal ;

kadm5_ret_t
kadm5_randkey_principal(void *server_handle,
   krb5_principal princ,
   krb5_keyblock **new_keys,
   int *n_keys)
{
    return __CALL(randkey_principal, (server_handle, princ, new_keys, n_keys));
}
