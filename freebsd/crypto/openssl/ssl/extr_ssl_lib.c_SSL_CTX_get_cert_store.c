
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_STORE ;
struct TYPE_3__ {int * cert_store; } ;
typedef TYPE_1__ SSL_CTX ;



X509_STORE *SSL_CTX_get_cert_store(const SSL_CTX *ctx)
{
    return ctx->cert_store;
}
