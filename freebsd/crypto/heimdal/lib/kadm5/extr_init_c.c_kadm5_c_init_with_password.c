
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kadm5_ret_t ;
typedef int kadm5_config_params ;


 int init_context (char const*,char const*,int ,int *,int *,char const*,int *,unsigned long,unsigned long,void**) ;
 int krb5_prompter_posix ;

kadm5_ret_t
kadm5_c_init_with_password(const char *client_name,
      const char *password,
      const char *service_name,
      kadm5_config_params *realm_params,
      unsigned long struct_version,
      unsigned long api_version,
      void **server_handle)
{
    return init_context(client_name,
   password,
   krb5_prompter_posix,
   ((void*)0),
   ((void*)0),
   service_name,
   realm_params,
   struct_version,
   api_version,
   server_handle);
}
