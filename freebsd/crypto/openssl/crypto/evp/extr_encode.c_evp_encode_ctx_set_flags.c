
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int flags; } ;
typedef TYPE_1__ EVP_ENCODE_CTX ;



void evp_encode_ctx_set_flags(EVP_ENCODE_CTX *ctx, unsigned int flags)
{
    ctx->flags = flags;
}
