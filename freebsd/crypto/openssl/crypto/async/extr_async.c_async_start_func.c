
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dispatcher; TYPE_2__* currjob; } ;
typedef TYPE_1__ async_ctx ;
struct TYPE_5__ {int fibrectx; int status; int funcargs; int (* func ) (int ) ;int ret; } ;
typedef TYPE_2__ ASYNC_JOB ;


 int ASYNC_F_ASYNC_START_FUNC ;
 int ASYNC_JOB_STOPPING ;
 int ASYNC_R_FAILED_TO_SWAP_CONTEXT ;
 int ASYNCerr (int ,int ) ;
 int async_fibre_swapcontext (int *,int *,int) ;
 TYPE_1__* async_get_ctx () ;
 int stub1 (int ) ;

void async_start_func(void)
{
    ASYNC_JOB *job;
    async_ctx *ctx = async_get_ctx();

    while (1) {

        job = ctx->currjob;
        job->ret = job->func(job->funcargs);


        job->status = ASYNC_JOB_STOPPING;
        if (!async_fibre_swapcontext(&job->fibrectx,
                                     &ctx->dispatcher, 1)) {




            ASYNCerr(ASYNC_F_ASYNC_START_FUNC, ASYNC_R_FAILED_TO_SWAP_CONTEXT);
        }
    }
}
