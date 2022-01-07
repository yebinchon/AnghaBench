
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* last_handler; int * last_handler_ctx; } ;
struct TYPE_8__ {TYPE_5__* uri; } ;
struct TYPE_10__ {TYPE_2__ file; TYPE_1__ dir; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_3__ _; } ;
struct TYPE_11__ {int (* destroy_ctx ) (int **) ;} ;
typedef TYPE_5__ OSSL_STORE_LOADER_CTX ;


 int OPENSSL_free (TYPE_5__*) ;
 scalar_t__ is_dir ;
 int stub1 (int **) ;

__attribute__((used)) static void OSSL_STORE_LOADER_CTX_free(OSSL_STORE_LOADER_CTX *ctx)
{
    if (ctx->type == is_dir) {
        OPENSSL_free(ctx->_.dir.uri);
    } else {
        if (ctx->_.file.last_handler != ((void*)0)) {
            ctx->_.file.last_handler->destroy_ctx(&ctx->_.file.last_handler_ctx);
            ctx->_.file.last_handler_ctx = ((void*)0);
            ctx->_.file.last_handler = ((void*)0);
        }
    }
    OPENSSL_free(ctx);
}
