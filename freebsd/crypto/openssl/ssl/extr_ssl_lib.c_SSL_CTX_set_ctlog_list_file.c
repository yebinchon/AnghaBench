
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctlog_store; } ;
typedef TYPE_1__ SSL_CTX ;


 int CTLOG_STORE_load_file (int ,char const*) ;

int SSL_CTX_set_ctlog_list_file(SSL_CTX *ctx, const char *path)
{
    return CTLOG_STORE_load_file(ctx->ctlog_store, path);
}
