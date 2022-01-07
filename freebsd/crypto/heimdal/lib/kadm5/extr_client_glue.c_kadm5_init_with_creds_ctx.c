
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;
typedef int krb5_ccache ;
typedef int kadm5_ret_t ;
typedef int kadm5_config_params ;


 int kadm5_c_init_with_creds_ctx (int ,char const*,int ,char const*,int *,unsigned long,unsigned long,void**) ;

kadm5_ret_t
kadm5_init_with_creds_ctx(krb5_context context,
     const char *client_name,
     krb5_ccache ccache,
     const char *service_name,
     kadm5_config_params *realm_params,
     unsigned long struct_version,
     unsigned long api_version,
     void **server_handle)
{
    return kadm5_c_init_with_creds_ctx(context,
           client_name,
           ccache,
           service_name,
           realm_params,
           struct_version,
           api_version,
           server_handle);
}
