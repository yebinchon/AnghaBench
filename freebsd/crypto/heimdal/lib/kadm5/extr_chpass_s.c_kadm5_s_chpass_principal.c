
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef int kadm5_ret_t ;


 int change (void*,int ,char const*,int ) ;

kadm5_ret_t
kadm5_s_chpass_principal(void *server_handle,
    krb5_principal princ,
    const char *password)
{
    return change (server_handle, princ, password, 0);
}
