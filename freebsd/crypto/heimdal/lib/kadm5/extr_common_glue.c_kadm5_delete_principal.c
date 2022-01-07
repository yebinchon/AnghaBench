
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef int kadm5_ret_t ;


 int __CALL (int ,void*) ;
 int delete_principal ;

kadm5_ret_t
kadm5_delete_principal(void *server_handle,
         krb5_principal princ)
{
    return __CALL(delete_principal, (server_handle, princ));
}
