
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_5__ {int loader_ctx; TYPE_1__* loader; } ;
struct TYPE_4__ {int (* ctrl ) (int ,int,int ) ;} ;
typedef TYPE_2__ OSSL_STORE_CTX ;


 int stub1 (int ,int,int ) ;

int OSSL_STORE_vctrl(OSSL_STORE_CTX *ctx, int cmd, va_list args)
{
    if (ctx->loader->ctrl != ((void*)0))
        return ctx->loader->ctrl(ctx->loader_ctx, cmd, args);
    return 0;
}
