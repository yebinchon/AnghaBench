
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int krb5_context ;
typedef scalar_t__ kadm5_ret_t ;
struct TYPE_11__ {int mask; char const* realm; } ;
typedef TYPE_1__ kadm5_config_params ;
struct TYPE_12__ {void* client_name; int * realm; int context; int caller; } ;
typedef TYPE_2__ kadm5_ad_context ;


 scalar_t__ ENOMEM ;
 int KADM5_CONFIG_REALM ;
 scalar_t__ _kadm5_ad_connect (TYPE_2__*) ;
 scalar_t__ ad_get_cred (TYPE_2__*,char const*) ;
 int free (TYPE_2__*) ;
 int initialize_kadm5_error_table_r ;
 int kadm5_ad_destroy (TYPE_2__*) ;
 int krb5_add_et_list (int ,int ) ;
 scalar_t__ krb5_get_default_realm (int ,int **) ;
 scalar_t__ krb5_parse_name (int ,char const*,int *) ;
 TYPE_2__* malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int set_funcs (TYPE_2__*) ;
 void* strdup (char const*) ;

kadm5_ret_t
kadm5_ad_init_with_password_ctx(krb5_context context,
    const char *client_name,
    const char *password,
    const char *service_name,
    kadm5_config_params *realm_params,
    unsigned long struct_version,
    unsigned long api_version,
    void **server_handle)
{
    kadm5_ret_t ret;
    kadm5_ad_context *ctx;

    ctx = malloc(sizeof(*ctx));
    if(ctx == ((void*)0))
 return ENOMEM;
    memset(ctx, 0, sizeof(*ctx));
    set_funcs(ctx);

    ctx->context = context;
    krb5_add_et_list (context, initialize_kadm5_error_table_r);

    ret = krb5_parse_name(ctx->context, client_name, &ctx->caller);
    if(ret) {
 free(ctx);
 return ret;
    }

    if(realm_params->mask & KADM5_CONFIG_REALM) {
 ret = 0;
 ctx->realm = strdup(realm_params->realm);
 if (ctx->realm == ((void*)0))
     ret = ENOMEM;
    } else
 ret = krb5_get_default_realm(ctx->context, &ctx->realm);
    if (ret) {
 free(ctx);
 return ret;
    }

    ctx->client_name = strdup(client_name);

    if(password != ((void*)0) && *password != '\0')
 ret = ad_get_cred(ctx, password);
    else
 ret = ad_get_cred(ctx, ((void*)0));
    if(ret) {
 kadm5_ad_destroy(ctx);
 return ret;
    }
    *server_handle = ctx;
    return 0;
}
