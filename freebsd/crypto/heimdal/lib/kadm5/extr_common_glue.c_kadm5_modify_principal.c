
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kadm5_ret_t ;
typedef int kadm5_principal_ent_t ;


 int __CALL (int ,void*) ;
 int modify_principal ;

kadm5_ret_t
kadm5_modify_principal(void *server_handle,
         kadm5_principal_ent_t princ,
         uint32_t mask)
{
    return __CALL(modify_principal, (server_handle, princ, mask));
}
