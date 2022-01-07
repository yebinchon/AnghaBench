
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_prompter_fct ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef scalar_t__ kadm5_ret_t ;
typedef int kadm5_config_params ;
struct TYPE_3__ {char const* keytab; int sock; int ccache; int prompter; int * service_name; int * client_name; } ;
typedef TYPE_1__ kadm5_client_context ;


 scalar_t__ _kadm5_c_get_cred_cache (int ,char const*,char const*,char const*,int ,char const*,int ,int *) ;
 scalar_t__ _kadm5_c_init_context (TYPE_1__**,int *,int ) ;
 void* strdup (char const*) ;

__attribute__((used)) static kadm5_ret_t
kadm5_c_init_with_context(krb5_context context,
     const char *client_name,
     const char *password,
     krb5_prompter_fct prompter,
     const char *keytab,
     krb5_ccache ccache,
     const char *service_name,
     kadm5_config_params *realm_params,
     unsigned long struct_version,
     unsigned long api_version,
     void **server_handle)
{
    kadm5_ret_t ret;
    kadm5_client_context *ctx;
    krb5_ccache cc;

    ret = _kadm5_c_init_context(&ctx, realm_params, context);
    if(ret)
 return ret;

    if(password != ((void*)0) && *password != '\0') {
 ret = _kadm5_c_get_cred_cache(context,
          client_name,
          service_name,
          password, prompter, keytab, ccache, &cc);
 if(ret)
     return ret;
 ccache = cc;
    }


    if (client_name != ((void*)0))
 ctx->client_name = strdup(client_name);
    else
 ctx->client_name = ((void*)0);
    if (service_name != ((void*)0))
 ctx->service_name = strdup(service_name);
    else
 ctx->service_name = ((void*)0);
    ctx->prompter = prompter;
    ctx->keytab = keytab;
    ctx->ccache = ccache;

    ctx->sock = -1;

    *server_handle = ctx;
    return 0;
}
