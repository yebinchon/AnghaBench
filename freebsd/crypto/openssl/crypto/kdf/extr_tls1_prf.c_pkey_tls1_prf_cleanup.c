
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {int seedlen; int seed; int seclen; int sec; } ;
typedef TYPE_1__ TLS1_PRF_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;


 int OPENSSL_cleanse (int ,int ) ;
 int OPENSSL_clear_free (int ,int ) ;
 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void pkey_tls1_prf_cleanup(EVP_PKEY_CTX *ctx)
{
    TLS1_PRF_PKEY_CTX *kctx = ctx->data;
    OPENSSL_clear_free(kctx->sec, kctx->seclen);
    OPENSSL_cleanse(kctx->seed, kctx->seedlen);
    OPENSSL_free(kctx);
}
