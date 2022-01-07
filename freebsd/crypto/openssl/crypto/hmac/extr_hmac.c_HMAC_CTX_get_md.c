
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* md; } ;
typedef TYPE_1__ HMAC_CTX ;
typedef int EVP_MD ;



const EVP_MD *HMAC_CTX_get_md(const HMAC_CTX *ctx)
{
    return ctx->md;
}
