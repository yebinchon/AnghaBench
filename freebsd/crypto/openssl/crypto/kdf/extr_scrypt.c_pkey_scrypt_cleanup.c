
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {int pass_len; int pass; int salt_len; int salt; } ;
typedef TYPE_1__ SCRYPT_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;


 int OPENSSL_clear_free (int ,int ) ;
 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void pkey_scrypt_cleanup(EVP_PKEY_CTX *ctx)
{
    SCRYPT_PKEY_CTX *kctx = ctx->data;

    OPENSSL_clear_free(kctx->salt, kctx->salt_len);
    OPENSSL_clear_free(kctx->pass, kctx->pass_len);
    OPENSSL_free(kctx);
}
