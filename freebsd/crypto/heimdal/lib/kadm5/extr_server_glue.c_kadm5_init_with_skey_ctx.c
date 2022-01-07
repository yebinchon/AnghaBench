
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;
typedef int kadm5_ret_t ;
typedef int kadm5_config_params ;


 int kadm5_s_init_with_skey_ctx (int ,char const*,char const*,char const*,int *,unsigned long,unsigned long,void**) ;

kadm5_ret_t
kadm5_init_with_skey_ctx(krb5_context context,
    const char *client_name,
    const char *keytab,
    const char *service_name,
    kadm5_config_params *realm_params,
    unsigned long struct_version,
    unsigned long api_version,
    void **server_handle)
{
    return kadm5_s_init_with_skey_ctx(context,
          client_name,
          keytab,
          service_name,
          realm_params,
          struct_version,
          api_version,
          server_handle);
}
