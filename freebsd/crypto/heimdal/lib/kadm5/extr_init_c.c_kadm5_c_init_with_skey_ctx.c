
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;
typedef int kadm5_ret_t ;
typedef int kadm5_config_params ;


 int kadm5_c_init_with_context (int ,char const*,int *,int *,char const*,int *,char const*,int *,unsigned long,unsigned long,void**) ;

kadm5_ret_t
kadm5_c_init_with_skey_ctx(krb5_context context,
      const char *client_name,
      const char *keytab,
      const char *service_name,
      kadm5_config_params *realm_params,
      unsigned long struct_version,
      unsigned long api_version,
      void **server_handle)
{
    return kadm5_c_init_with_context(context,
         client_name,
         ((void*)0),
         ((void*)0),
         keytab,
         ((void*)0),
         service_name,
         realm_params,
         struct_version,
         api_version,
         server_handle);
}
