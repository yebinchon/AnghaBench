
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pmeth; } ;
struct TYPE_5__ {scalar_t__ pkey_id; } ;
typedef TYPE_2__ EVP_PKEY_CTX ;


 int EVP_PKEY_CTX_ctrl (TYPE_2__*,int,int,int,int,void*) ;
 scalar_t__ EVP_PKEY_RSA ;
 scalar_t__ EVP_PKEY_RSA_PSS ;

int RSA_pkey_ctx_ctrl(EVP_PKEY_CTX *ctx, int optype, int cmd, int p1, void *p2)
{

    if (ctx != ((void*)0) && ctx->pmeth != ((void*)0)
        && ctx->pmeth->pkey_id != EVP_PKEY_RSA
        && ctx->pmeth->pkey_id != EVP_PKEY_RSA_PSS)
        return -1;
     return EVP_PKEY_CTX_ctrl(ctx, -1, optype, cmd, p1, p2);
}
