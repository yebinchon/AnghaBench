
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int expected_type; int loader_ctx; TYPE_1__* loader; scalar_t__ loading; } ;
struct TYPE_4__ {int (* expect ) (int ,int) ;} ;
typedef TYPE_2__ OSSL_STORE_CTX ;


 int OSSL_STORE_F_OSSL_STORE_EXPECT ;
 int OSSL_STORE_R_LOADING_STARTED ;
 int OSSL_STOREerr (int ,int ) ;
 int stub1 (int ,int) ;

int OSSL_STORE_expect(OSSL_STORE_CTX *ctx, int expected_type)
{
    if (ctx->loading) {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_EXPECT,
                      OSSL_STORE_R_LOADING_STARTED);
        return 0;
    }

    ctx->expected_type = expected_type;
    if (ctx->loader->expect != ((void*)0))
        return ctx->loader->expect(ctx->loader_ctx, expected_type);
    return 1;
}
