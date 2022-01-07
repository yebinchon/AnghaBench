
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* pkey; int * data; int * engine; } ;
struct TYPE_5__ {scalar_t__ ptr; } ;
struct TYPE_6__ {TYPE_1__ pkey; } ;
typedef TYPE_3__ EVP_PKEY_CTX ;
typedef int CMAC_CTX ;


 int CMAC_CTX_copy (int *,int *) ;
 int CMAC_Init (int *,void*,int,void*,int *) ;




__attribute__((used)) static int pkey_cmac_ctrl(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{
    CMAC_CTX *cmctx = ctx->data;
    switch (type) {

    case 128:
        if (!p2 || p1 < 0)
            return 0;
        if (!CMAC_Init(cmctx, p2, p1, ((void*)0), ((void*)0)))
            return 0;
        break;

    case 130:
        if (!CMAC_Init(cmctx, ((void*)0), 0, p2, ctx->engine))
            return 0;
        break;

    case 129:
        if (ctx->pkey && !CMAC_CTX_copy(ctx->data,
                                        (CMAC_CTX *)ctx->pkey->pkey.ptr))
            return 0;
        if (!CMAC_Init(cmctx, ((void*)0), 0, ((void*)0), ((void*)0)))
            return 0;
        break;

    default:
        return -2;

    }
    return 1;
}
