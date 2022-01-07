
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int file; int last_handler_ctx; TYPE_2__* last_handler; } ;
struct TYPE_7__ {int end_reached; } ;
struct TYPE_9__ {TYPE_4__ file; TYPE_1__ dir; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_3__ _; } ;
struct TYPE_8__ {int (* eof ) (int ) ;} ;
typedef TYPE_5__ OSSL_STORE_LOADER_CTX ;


 int BIO_eof (int ) ;
 scalar_t__ is_dir ;
 int stub1 (int ) ;

__attribute__((used)) static int file_eof(OSSL_STORE_LOADER_CTX *ctx)
{
    if (ctx->type == is_dir)
        return ctx->_.dir.end_reached;

    if (ctx->_.file.last_handler != ((void*)0)
        && !ctx->_.file.last_handler->eof(ctx->_.file.last_handler_ctx))
        return 0;
    return BIO_eof(ctx->_.file.file);
}
