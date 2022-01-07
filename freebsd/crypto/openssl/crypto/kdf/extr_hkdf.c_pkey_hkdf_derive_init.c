
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {int info_len; int info; int salt_len; int salt; int key_len; int key; } ;
typedef TYPE_1__ HKDF_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;


 int OPENSSL_cleanse (int ,int ) ;
 int OPENSSL_clear_free (int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int pkey_hkdf_derive_init(EVP_PKEY_CTX *ctx)
{
    HKDF_PKEY_CTX *kctx = ctx->data;

    OPENSSL_clear_free(kctx->key, kctx->key_len);
    OPENSSL_clear_free(kctx->salt, kctx->salt_len);
    OPENSSL_cleanse(kctx->info, kctx->info_len);
    memset(kctx, 0, sizeof(*kctx));

    return 1;
}
