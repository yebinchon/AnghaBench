
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UI_METHOD ;
struct TYPE_7__ {TYPE_1__* last_handler; int * last_handler_ctx; } ;
struct TYPE_8__ {TYPE_2__ file; } ;
struct TYPE_9__ {TYPE_3__ _; } ;
struct TYPE_6__ {int (* destroy_ctx ) (int **) ;int * (* try_decode ) (int *,int *,int *,int ,int **,int*,int const*,void*) ;} ;
typedef TYPE_4__ OSSL_STORE_LOADER_CTX ;
typedef int OSSL_STORE_INFO ;


 int * stub1 (int *,int *,int *,int ,int **,int*,int const*,void*) ;
 int stub2 (int **) ;

__attribute__((used)) static OSSL_STORE_INFO *file_load_try_repeat(OSSL_STORE_LOADER_CTX *ctx,
                                             const UI_METHOD *ui_method,
                                             void *ui_data)
{
    OSSL_STORE_INFO *result = ((void*)0);
    int try_matchcount = 0;

    if (ctx->_.file.last_handler != ((void*)0)) {
        result =
            ctx->_.file.last_handler->try_decode(((void*)0), ((void*)0), ((void*)0), 0,
                                                 &ctx->_.file.last_handler_ctx,
                                                 &try_matchcount,
                                                 ui_method, ui_data);

        if (result == ((void*)0)) {
            ctx->_.file.last_handler->destroy_ctx(&ctx->_.file.last_handler_ctx);
            ctx->_.file.last_handler_ctx = ((void*)0);
            ctx->_.file.last_handler = ((void*)0);
        }
    }
    return result;
}
