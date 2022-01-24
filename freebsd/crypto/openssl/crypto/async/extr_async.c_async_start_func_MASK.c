#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dispatcher; TYPE_2__* currjob; } ;
typedef  TYPE_1__ async_ctx ;
struct TYPE_5__ {int /*<<< orphan*/  fibrectx; int /*<<< orphan*/  status; int /*<<< orphan*/  funcargs; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  ret; } ;
typedef  TYPE_2__ ASYNC_JOB ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_F_ASYNC_START_FUNC ; 
 int /*<<< orphan*/  ASYNC_JOB_STOPPING ; 
 int /*<<< orphan*/  ASYNC_R_FAILED_TO_SWAP_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
    ASYNC_JOB *job;
    async_ctx *ctx = FUNC2();

    while (1) {
        /* Run the job */
        job = ctx->currjob;
        job->ret = job->func(job->funcargs);

        /* Stop the job */
        job->status = ASYNC_JOB_STOPPING;
        if (!FUNC1(&job->fibrectx,
                                     &ctx->dispatcher, 1)) {
            /*
             * Should not happen. Getting here will close the thread...can't do
             * much about it
             */
            FUNC0(ASYNC_F_ASYNC_START_FUNC, ASYNC_R_FAILED_TO_SWAP_CONTEXT);
        }
    }
}