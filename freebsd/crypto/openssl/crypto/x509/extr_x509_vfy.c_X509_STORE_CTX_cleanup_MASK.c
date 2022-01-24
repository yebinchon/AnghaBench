#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ex_data; int /*<<< orphan*/ * chain; int /*<<< orphan*/ * tree; int /*<<< orphan*/ * param; int /*<<< orphan*/ * parent; int /*<<< orphan*/  (* cleanup ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ X509_STORE_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_EX_INDEX_X509_STORE_CTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  X509_free ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(X509_STORE_CTX *ctx)
{
    /*
     * We need to be idempotent because, unfortunately, free() also calls
     * cleanup(), so the natural call sequence new(), init(), cleanup(), free()
     * calls cleanup() for the same object twice!  Thus we must zero the
     * pointers below after they're freed!
     */
    /* Seems to always be 0 in OpenSSL, do this at most once. */
    if (ctx->cleanup != NULL) {
        ctx->cleanup(ctx);
        ctx->cleanup = NULL;
    }
    if (ctx->param != NULL) {
        if (ctx->parent == NULL)
            FUNC1(ctx->param);
        ctx->param = NULL;
    }
    FUNC2(ctx->tree);
    ctx->tree = NULL;
    FUNC4(ctx->chain, X509_free);
    ctx->chain = NULL;
    FUNC0(CRYPTO_EX_INDEX_X509_STORE_CTX, ctx, &(ctx->ex_data));
    FUNC3(&ctx->ex_data, 0, sizeof(ctx->ex_data));
}