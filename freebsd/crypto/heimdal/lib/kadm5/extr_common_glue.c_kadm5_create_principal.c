
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kadm5_ret_t ;
typedef int kadm5_principal_ent_t ;


 int __CALL (int ,void*) ;
 int create_principal ;

kadm5_ret_t
kadm5_create_principal(void *server_handle,
         kadm5_principal_ent_t princ,
         uint32_t mask,
         const char *password)
{
    return __CALL(create_principal, (server_handle, princ, mask, password));
}
