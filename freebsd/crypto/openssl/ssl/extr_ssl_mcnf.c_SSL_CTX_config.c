
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int ssl_do_config (int *,int *,char const*,int ) ;

int SSL_CTX_config(SSL_CTX *ctx, const char *name)
{
    return ssl_do_config(((void*)0), ctx, name, 0);
}
