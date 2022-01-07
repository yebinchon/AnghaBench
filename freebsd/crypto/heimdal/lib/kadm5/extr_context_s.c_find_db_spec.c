
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hdb_dbinfo {int dummy; } ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_6__ {int socket_info; int socket_name; int * log_file; } ;
struct TYPE_5__ {int * stash_file; int * acl_file; int * dbname; scalar_t__ realm; } ;
struct TYPE_7__ {TYPE_2__ log_context; TYPE_1__ config; int context; } ;
typedef TYPE_3__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;


 int asprintf (int **,char*,int ) ;
 int hdb_db_dir (int ) ;
 char* hdb_dbinfo_get_acl_file (int ,struct hdb_dbinfo*) ;
 char* hdb_dbinfo_get_dbname (int ,struct hdb_dbinfo*) ;
 char* hdb_dbinfo_get_log_file (int ,struct hdb_dbinfo*) ;
 char* hdb_dbinfo_get_mkey_file (int ,struct hdb_dbinfo*) ;
 struct hdb_dbinfo* hdb_dbinfo_get_next (struct hdb_dbinfo*,struct hdb_dbinfo*) ;
 char* hdb_dbinfo_get_realm (int ,struct hdb_dbinfo*) ;
 char const* hdb_default_db (int ) ;
 int hdb_free_dbinfo (int ,struct hdb_dbinfo**) ;
 scalar_t__ hdb_get_dbinfo (int ,struct hdb_dbinfo**) ;
 int set_socket_info (int ,int *) ;
 int set_socket_name (int ,int *) ;
 scalar_t__ strcmp (scalar_t__,char const*) ;
 void* strdup (char const*) ;

__attribute__((used)) static kadm5_ret_t
find_db_spec(kadm5_server_context *ctx)
{
    krb5_context context = ctx->context;
    struct hdb_dbinfo *info, *d;
    krb5_error_code ret;

    if (ctx->config.realm) {

 ret = hdb_get_dbinfo(context, &info);
 if (ret)
     return ret;

 d = ((void*)0);
 while ((d = hdb_dbinfo_get_next(info, d)) != ((void*)0)) {
     const char *p = hdb_dbinfo_get_realm(context, d);


     if(p != ((void*)0) && strcmp(ctx->config.realm, p) != 0)
  continue;

     p = hdb_dbinfo_get_dbname(context, d);
     if (p)
  ctx->config.dbname = strdup(p);

     p = hdb_dbinfo_get_acl_file(context, d);
     if (p)
  ctx->config.acl_file = strdup(p);

     p = hdb_dbinfo_get_mkey_file(context, d);
     if (p)
  ctx->config.stash_file = strdup(p);

     p = hdb_dbinfo_get_log_file(context, d);
     if (p)
  ctx->log_context.log_file = strdup(p);
     break;
 }
 hdb_free_dbinfo(context, &info);
    }



    if (ctx->config.dbname == ((void*)0))
 ctx->config.dbname = strdup(hdb_default_db(context));
    if (ctx->config.acl_file == ((void*)0))
 asprintf(&ctx->config.acl_file, "%s/kadmind.acl", hdb_db_dir(context));
    if (ctx->config.stash_file == ((void*)0))
 asprintf(&ctx->config.stash_file, "%s/m-key", hdb_db_dir(context));
    if (ctx->log_context.log_file == ((void*)0))
 asprintf(&ctx->log_context.log_file, "%s/log", hdb_db_dir(context));


    set_socket_name(context, &ctx->log_context.socket_name);




    return 0;
}
