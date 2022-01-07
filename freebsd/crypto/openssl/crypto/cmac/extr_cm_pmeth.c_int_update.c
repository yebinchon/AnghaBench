
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
typedef int EVP_MD_CTX ;


 int CMAC_Update (int ,void const*,size_t) ;
 TYPE_1__* EVP_MD_CTX_pkey_ctx (int *) ;

__attribute__((used)) static int int_update(EVP_MD_CTX *ctx, const void *data, size_t count)
{
    if (!CMAC_Update(EVP_MD_CTX_pkey_ctx(ctx)->data, data, count))
        return 0;
    return 1;
}
