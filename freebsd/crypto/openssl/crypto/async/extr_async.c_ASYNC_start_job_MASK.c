#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* currjob; int /*<<< orphan*/  dispatcher; } ;
typedef  TYPE_1__ async_ctx ;
struct TYPE_9__ {scalar_t__ status; int ret; int (* func ) (void*) ;int /*<<< orphan*/  fibrectx; int /*<<< orphan*/ * waitctx; int /*<<< orphan*/ * funcargs; } ;
typedef  int /*<<< orphan*/  ASYNC_WAIT_CTX ;
typedef  TYPE_2__ ASYNC_JOB ;

/* Variables and functions */
 int ASYNC_ERR ; 
 int ASYNC_FINISH ; 
 int /*<<< orphan*/  ASYNC_F_ASYNC_START_JOB ; 
 scalar_t__ ASYNC_JOB_PAUSED ; 
 scalar_t__ ASYNC_JOB_PAUSING ; 
 scalar_t__ ASYNC_JOB_STOPPING ; 
 int ASYNC_NO_JOBS ; 
 int ASYNC_PAUSE ; 
 int /*<<< orphan*/  ASYNC_R_FAILED_TO_SWAP_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  OPENSSL_INIT_ASYNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC5 () ; 
 TYPE_2__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*,size_t) ; 

int FUNC9(ASYNC_JOB **job, ASYNC_WAIT_CTX *wctx, int *ret,
                    int (*func)(void *), void *args, size_t size)
{
    async_ctx *ctx;

    if (!FUNC1(OPENSSL_INIT_ASYNC, NULL))
        return ASYNC_ERR;

    ctx = FUNC5();
    if (ctx == NULL)
        ctx = FUNC3();
    if (ctx == NULL)
        return ASYNC_ERR;

    if (*job)
        ctx->currjob = *job;

    for (;;) {
        if (ctx->currjob != NULL) {
            if (ctx->currjob->status == ASYNC_JOB_STOPPING) {
                *ret = ctx->currjob->ret;
                ctx->currjob->waitctx = NULL;
                FUNC7(ctx->currjob);
                ctx->currjob = NULL;
                *job = NULL;
                return ASYNC_FINISH;
            }

            if (ctx->currjob->status == ASYNC_JOB_PAUSING) {
                *job = ctx->currjob;
                ctx->currjob->status = ASYNC_JOB_PAUSED;
                ctx->currjob = NULL;
                return ASYNC_PAUSE;
            }

            if (ctx->currjob->status == ASYNC_JOB_PAUSED) {
                ctx->currjob = *job;
                /* Resume previous job */
                if (!FUNC4(&ctx->dispatcher,
                        &ctx->currjob->fibrectx, 1)) {
                    FUNC0(ASYNC_F_ASYNC_START_JOB,
                             ASYNC_R_FAILED_TO_SWAP_CONTEXT);
                    goto err;
                }
                continue;
            }

            /* Should not happen */
            FUNC0(ASYNC_F_ASYNC_START_JOB, ERR_R_INTERNAL_ERROR);
            FUNC7(ctx->currjob);
            ctx->currjob = NULL;
            *job = NULL;
            return ASYNC_ERR;
        }

        /* Start a new job */
        if ((ctx->currjob = FUNC6()) == NULL)
            return ASYNC_NO_JOBS;

        if (args != NULL) {
            ctx->currjob->funcargs = FUNC2(size);
            if (ctx->currjob->funcargs == NULL) {
                FUNC0(ASYNC_F_ASYNC_START_JOB, ERR_R_MALLOC_FAILURE);
                FUNC7(ctx->currjob);
                ctx->currjob = NULL;
                return ASYNC_ERR;
            }
            FUNC8(ctx->currjob->funcargs, args, size);
        } else {
            ctx->currjob->funcargs = NULL;
        }

        ctx->currjob->func = func;
        ctx->currjob->waitctx = wctx;
        if (!FUNC4(&ctx->dispatcher,
                &ctx->currjob->fibrectx, 1)) {
            FUNC0(ASYNC_F_ASYNC_START_JOB, ASYNC_R_FAILED_TO_SWAP_CONTEXT);
            goto err;
        }
    }

err:
    FUNC7(ctx->currjob);
    ctx->currjob = NULL;
    *job = NULL;
    return ASYNC_ERR;
}