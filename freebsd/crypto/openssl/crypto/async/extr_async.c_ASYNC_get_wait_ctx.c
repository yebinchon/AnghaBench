
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * waitctx; } ;
typedef int ASYNC_WAIT_CTX ;
typedef TYPE_1__ ASYNC_JOB ;



ASYNC_WAIT_CTX *ASYNC_get_wait_ctx(ASYNC_JOB *job)
{
    return job->waitctx;
}
