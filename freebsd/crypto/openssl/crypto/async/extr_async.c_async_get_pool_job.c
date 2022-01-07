
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ max_size; scalar_t__ curr_size; int jobs; } ;
typedef TYPE_1__ async_pool ;
struct TYPE_8__ {int fibrectx; } ;
typedef TYPE_2__ ASYNC_JOB ;


 scalar_t__ ASYNC_init_thread (int ,int ) ;
 scalar_t__ CRYPTO_THREAD_get_local (int *) ;
 int async_fibre_makecontext (int *) ;
 int async_job_free (TYPE_2__*) ;
 TYPE_2__* async_job_new () ;
 int poolkey ;
 TYPE_2__* sk_ASYNC_JOB_pop (int ) ;

__attribute__((used)) static ASYNC_JOB *async_get_pool_job(void) {
    ASYNC_JOB *job;
    async_pool *pool;

    pool = (async_pool *)CRYPTO_THREAD_get_local(&poolkey);
    if (pool == ((void*)0)) {




        if (ASYNC_init_thread(0, 0) == 0)
            return ((void*)0);
        pool = (async_pool *)CRYPTO_THREAD_get_local(&poolkey);
    }

    job = sk_ASYNC_JOB_pop(pool->jobs);
    if (job == ((void*)0)) {

        if ((pool->max_size != 0) && (pool->curr_size >= pool->max_size))
            return ((void*)0);

        job = async_job_new();
        if (job != ((void*)0)) {
            if (! async_fibre_makecontext(&job->fibrectx)) {
                async_job_free(job);
                return ((void*)0);
            }
            pool->curr_size++;
        }
    }
    return job;
}
