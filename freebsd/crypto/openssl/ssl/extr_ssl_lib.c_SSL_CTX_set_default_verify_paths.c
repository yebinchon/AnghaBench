
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cert_store; } ;
typedef TYPE_1__ SSL_CTX ;


 int X509_STORE_set_default_paths (int ) ;

int SSL_CTX_set_default_verify_paths(SSL_CTX *ctx)
{
    return X509_STORE_set_default_paths(ctx->cert_store);
}
