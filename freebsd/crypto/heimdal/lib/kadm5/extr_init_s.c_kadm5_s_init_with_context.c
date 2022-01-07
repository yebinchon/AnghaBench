
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int krb5_context ;
struct TYPE_8__ {char* sun_path; } ;
struct TYPE_11__ {int log_fd; TYPE_3__* socket_info; void* socket_fd; TYPE_1__ socket_name; int * log_file; } ;
struct TYPE_9__ {int * stash_file; int * dbname; int * acl_file; } ;
struct TYPE_12__ {int caller; int context; TYPE_4__ log_context; TYPE_2__ config; int db; } ;
typedef TYPE_5__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
typedef int kadm5_config_params ;
struct TYPE_10__ {int ai_protocol; int ai_socktype; int ai_family; } ;


 int AF_UNIX ;
 int SOCK_DGRAM ;
 scalar_t__ _kadm5_acl_init (TYPE_5__*) ;
 scalar_t__ _kadm5_s_init_context (TYPE_5__**,int *,int ) ;
 int assert (int) ;
 scalar_t__ hdb_create (int ,int *,int *) ;
 scalar_t__ hdb_set_master_keyfile (int ,int ,int *) ;
 scalar_t__ krb5_parse_name (int ,char const*,int *) ;
 void* socket (int ,int ,int ) ;

__attribute__((used)) static kadm5_ret_t
kadm5_s_init_with_context(krb5_context context,
     const char *client_name,
     const char *service_name,
     kadm5_config_params *realm_params,
     unsigned long struct_version,
     unsigned long api_version,
     void **server_handle)
{
    kadm5_ret_t ret;
    kadm5_server_context *ctx;
    ret = _kadm5_s_init_context(&ctx, realm_params, context);
    if(ret)
 return ret;

    assert(ctx->config.dbname != ((void*)0));
    assert(ctx->config.stash_file != ((void*)0));
    assert(ctx->config.acl_file != ((void*)0));
    assert(ctx->log_context.log_file != ((void*)0));

    assert(ctx->log_context.socket_name.sun_path[0] != '\0');




    ret = hdb_create(ctx->context, &ctx->db, ctx->config.dbname);
    if(ret)
 return ret;
    ret = hdb_set_master_keyfile (ctx->context,
      ctx->db, ctx->config.stash_file);
    if(ret)
 return ret;

    ctx->log_context.log_fd = -1;


    ctx->log_context.socket_fd = socket (AF_UNIX, SOCK_DGRAM, 0);






    ret = krb5_parse_name(ctx->context, client_name, &ctx->caller);
    if(ret)
 return ret;

    ret = _kadm5_acl_init(ctx);
    if(ret)
 return ret;

    *server_handle = ctx;
    return 0;
}
