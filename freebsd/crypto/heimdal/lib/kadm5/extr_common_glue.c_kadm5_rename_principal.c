
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef int kadm5_ret_t ;


 int __CALL (int ,void*) ;
 int rename_principal ;

kadm5_ret_t
kadm5_rename_principal(void *server_handle,
         krb5_principal source,
         krb5_principal target)
{
    return __CALL(rename_principal, (server_handle, source, target));
}
