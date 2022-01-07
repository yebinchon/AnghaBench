
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {int ctx; } ;
typedef TYPE_1__ HMAC_PKEY_CTX ;
typedef int EVP_MD_CTX ;


 TYPE_2__* EVP_MD_CTX_pkey_ctx (int *) ;
 int HMAC_Update (int ,void const*,size_t) ;

__attribute__((used)) static int int_update(EVP_MD_CTX *ctx, const void *data, size_t count)
{
    HMAC_PKEY_CTX *hctx = EVP_MD_CTX_pkey_ctx(ctx)->data;
    if (!HMAC_Update(hctx->ctx, data, count))
        return 0;
    return 1;
}
