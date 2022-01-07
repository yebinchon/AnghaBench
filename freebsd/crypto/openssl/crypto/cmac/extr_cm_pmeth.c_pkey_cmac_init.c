
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ keygen_info_count; int * data; } ;
typedef TYPE_1__ EVP_PKEY_CTX ;


 int * CMAC_CTX_new () ;

__attribute__((used)) static int pkey_cmac_init(EVP_PKEY_CTX *ctx)
{
    ctx->data = CMAC_CTX_new();
    if (ctx->data == ((void*)0))
        return 0;
    ctx->keygen_info_count = 0;
    return 1;
}
