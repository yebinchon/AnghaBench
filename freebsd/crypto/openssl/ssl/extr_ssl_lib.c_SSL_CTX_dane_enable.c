
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dane; } ;
typedef TYPE_1__ SSL_CTX ;


 int dane_ctx_enable (int *) ;

int SSL_CTX_dane_enable(SSL_CTX *ctx)
{
    return dane_ctx_enable(&ctx->dane);
}
