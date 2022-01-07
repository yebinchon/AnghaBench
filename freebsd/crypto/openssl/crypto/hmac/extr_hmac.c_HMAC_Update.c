
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int md_ctx; int md; } ;
typedef TYPE_1__ HMAC_CTX ;


 int EVP_DigestUpdate (int ,unsigned char const*,size_t) ;

int HMAC_Update(HMAC_CTX *ctx, const unsigned char *data, size_t len)
{
    if (!ctx->md)
        return 0;
    return EVP_DigestUpdate(ctx->md_ctx, data, len);
}
