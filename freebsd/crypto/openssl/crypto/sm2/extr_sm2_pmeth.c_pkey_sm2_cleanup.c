
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {struct TYPE_5__* id; int gen_group; } ;
typedef TYPE_1__ SM2_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;


 int EC_GROUP_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void pkey_sm2_cleanup(EVP_PKEY_CTX *ctx)
{
    SM2_PKEY_CTX *smctx = ctx->data;

    if (smctx != ((void*)0)) {
        EC_GROUP_free(smctx->gen_group);
        OPENSSL_free(smctx->id);
        OPENSSL_free(smctx);
        ctx->data = ((void*)0);
    }
}
