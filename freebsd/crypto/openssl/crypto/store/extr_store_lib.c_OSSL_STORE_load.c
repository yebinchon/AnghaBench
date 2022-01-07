
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int loading; scalar_t__ expected_type; TYPE_1__* loader; int post_process_data; int * (* post_process ) (int *,int ) ;int ui_data; int ui_method; int loader_ctx; } ;
struct TYPE_5__ {int * expect; int * (* load ) (int ,int ,int ) ;} ;
typedef int OSSL_STORE_INFO ;
typedef TYPE_2__ OSSL_STORE_CTX ;


 int OSSL_STORE_INFO_NAME ;
 int OSSL_STORE_INFO_free (int *) ;
 int OSSL_STORE_INFO_get_type (int *) ;
 scalar_t__ OSSL_STORE_eof (TYPE_2__*) ;
 int assert (int) ;
 int * stub1 (int ,int ,int ) ;
 int * stub2 (int *,int ) ;

OSSL_STORE_INFO *OSSL_STORE_load(OSSL_STORE_CTX *ctx)
{
    OSSL_STORE_INFO *v = ((void*)0);

    ctx->loading = 1;
 again:
    if (OSSL_STORE_eof(ctx))
        return ((void*)0);

    v = ctx->loader->load(ctx->loader_ctx, ctx->ui_method, ctx->ui_data);

    if (ctx->post_process != ((void*)0) && v != ((void*)0)) {
        v = ctx->post_process(v, ctx->post_process_data);





        if (v == ((void*)0))
            goto again;
    }

    if (v != ((void*)0) && ctx->expected_type != 0) {
        int returned_type = OSSL_STORE_INFO_get_type(v);

        if (returned_type != OSSL_STORE_INFO_NAME && returned_type != 0) {




            if (ctx->loader->expect != ((void*)0))
                assert(ctx->expected_type == returned_type);

            if (ctx->expected_type != returned_type) {
                OSSL_STORE_INFO_free(v);
                goto again;
            }
        }
    }

    return v;
}
