#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int loading; scalar_t__ expected_type; TYPE_1__* loader; int /*<<< orphan*/  post_process_data; int /*<<< orphan*/ * (* post_process ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  ui_data; int /*<<< orphan*/  ui_method; int /*<<< orphan*/  loader_ctx; } ;
struct TYPE_5__ {int /*<<< orphan*/ * expect; int /*<<< orphan*/ * (* load ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  OSSL_STORE_INFO ;
typedef  TYPE_2__ OSSL_STORE_CTX ;

/* Variables and functions */
 int OSSL_STORE_INFO_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

OSSL_STORE_INFO *FUNC6(OSSL_STORE_CTX *ctx)
{
    OSSL_STORE_INFO *v = NULL;

    ctx->loading = 1;
 again:
    if (FUNC2(ctx))
        return NULL;

    v = ctx->loader->load(ctx->loader_ctx, ctx->ui_method, ctx->ui_data);

    if (ctx->post_process != NULL && v != NULL) {
        v = ctx->post_process(v, ctx->post_process_data);

        /*
         * By returning NULL, the callback decides that this object should
         * be ignored.
         */
        if (v == NULL)
            goto again;
    }

    if (v != NULL && ctx->expected_type != 0) {
        int returned_type = FUNC1(v);

        if (returned_type != OSSL_STORE_INFO_NAME && returned_type != 0) {
            /*
             * Soft assert here so those who want to harsly weed out faulty
             * loaders can do so using a debugging version of libcrypto.
             */
            if (ctx->loader->expect != NULL)
                FUNC3(ctx->expected_type == returned_type);

            if (ctx->expected_type != returned_type) {
                FUNC0(v);
                goto again;
            }
        }
    }

    return v;
}