
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kadm5_ret_t ;
typedef int kadm5_principal_ent_t ;


 int KADM5_AUX_ATTRIBUTES ;
 int KADM5_LAST_FAILED ;
 int KADM5_LAST_PWD_CHANGE ;
 int KADM5_LAST_SUCCESS ;
 int KADM5_MKVNO ;
 int KADM5_MOD_NAME ;
 int KADM5_MOD_TIME ;
 int modify_principal (void*,int ,int ,int) ;

kadm5_ret_t
kadm5_s_modify_principal(void *server_handle,
    kadm5_principal_ent_t princ,
    uint32_t mask)
{
    return modify_principal(server_handle, princ, mask,
       KADM5_LAST_PWD_CHANGE | KADM5_MOD_TIME
       | KADM5_MOD_NAME | KADM5_MKVNO
       | KADM5_AUX_ATTRIBUTES | KADM5_LAST_SUCCESS
       | KADM5_LAST_FAILED);
}
