
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int loader_ctx; TYPE_1__* loader; } ;
struct TYPE_5__ {int (* close ) (int ) ;} ;
typedef TYPE_2__ OSSL_STORE_CTX ;


 int OPENSSL_free (TYPE_2__*) ;
 int stub1 (int ) ;

int OSSL_STORE_close(OSSL_STORE_CTX *ctx)
{
    int loader_ret = ctx->loader->close(ctx->loader_ctx);

    OPENSSL_free(ctx);
    return loader_ret;
}
