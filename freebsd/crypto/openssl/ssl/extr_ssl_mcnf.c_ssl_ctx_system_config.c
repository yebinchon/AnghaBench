
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int ssl_do_config (int *,int *,int *,int) ;

void ssl_ctx_system_config(SSL_CTX *ctx)
{
    ssl_do_config(((void*)0), ctx, ((void*)0), 1);
}
