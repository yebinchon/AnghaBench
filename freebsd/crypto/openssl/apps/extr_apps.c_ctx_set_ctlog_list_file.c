
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int SSL_CTX_set_ctlog_list_file (int *,char const*) ;
 int SSL_CTX_set_default_ctlog_list_file (int *) ;

int ctx_set_ctlog_list_file(SSL_CTX *ctx, const char *path)
{
    if (path == ((void*)0))
        return SSL_CTX_set_default_ctlog_list_file(ctx);

    return SSL_CTX_set_ctlog_list_file(ctx, path);
}
