
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_ccache ;
typedef int kadm5_ret_t ;
typedef int kadm5_config_params ;


 int init_context (char const*,int *,int *,int *,int ,char const*,int *,unsigned long,unsigned long,void**) ;

kadm5_ret_t
kadm5_c_init_with_creds(const char *client_name,
   krb5_ccache ccache,
   const char *service_name,
   kadm5_config_params *realm_params,
   unsigned long struct_version,
   unsigned long api_version,
   void **server_handle)
{
    return init_context(client_name,
   ((void*)0),
   ((void*)0),
   ((void*)0),
   ccache,
   service_name,
   realm_params,
   struct_version,
   api_version,
   server_handle);
}
