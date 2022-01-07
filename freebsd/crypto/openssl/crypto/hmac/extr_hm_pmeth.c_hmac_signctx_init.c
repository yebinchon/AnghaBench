
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {int ctx; } ;
typedef TYPE_1__ HMAC_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;
typedef int EVP_MD_CTX ;


 int EVP_MD_CTX_FLAG_NO_INIT ;
 int EVP_MD_CTX_set_flags (int *,int ) ;
 int EVP_MD_CTX_set_update_fn (int *,int ) ;
 int EVP_MD_CTX_test_flags (int *,int ) ;
 int HMAC_CTX_set_flags (int ,int ) ;
 int int_update ;

__attribute__((used)) static int hmac_signctx_init(EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx)
{
    HMAC_PKEY_CTX *hctx = ctx->data;
    HMAC_CTX_set_flags(hctx->ctx,
                       EVP_MD_CTX_test_flags(mctx, ~EVP_MD_CTX_FLAG_NO_INIT));
    EVP_MD_CTX_set_flags(mctx, EVP_MD_CTX_FLAG_NO_INIT);
    EVP_MD_CTX_set_update_fn(mctx, int_update);
    return 1;
}
