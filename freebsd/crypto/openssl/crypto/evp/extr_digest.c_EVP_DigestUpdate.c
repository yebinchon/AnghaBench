
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* update ) (TYPE_1__*,void const*,size_t) ;} ;
typedef TYPE_1__ EVP_MD_CTX ;


 int stub1 (TYPE_1__*,void const*,size_t) ;

int EVP_DigestUpdate(EVP_MD_CTX *ctx, const void *data, size_t count)
{
    if (count == 0)
        return 1;

    return ctx->update(ctx, data, count);
}
