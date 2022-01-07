
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int krb5_principal ;
typedef int kadm5_ret_t ;
typedef int kadm5_principal_ent_t ;


 int __CALL (int ,void*) ;
 int get_principal ;

kadm5_ret_t
kadm5_get_principal(void *server_handle,
      krb5_principal princ,
      kadm5_principal_ent_t out,
      uint32_t mask)
{
    return __CALL(get_principal, (server_handle, princ, out, mask));
}
