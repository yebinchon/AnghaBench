#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {size_t max_size; size_t curr_size; int /*<<< orphan*/ * jobs; } ;
typedef  TYPE_1__ async_pool ;
struct TYPE_11__ {int /*<<< orphan*/ * funcargs; int /*<<< orphan*/  fibrectx; } ;
typedef  TYPE_2__ ASYNC_JOB ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_F_ASYNC_INIT_THREAD ; 
 int /*<<< orphan*/  ASYNC_R_FAILED_TO_SET_POOL ; 
 int /*<<< orphan*/  ASYNC_R_INVALID_POOL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  OPENSSL_INIT_ASYNC ; 
 int /*<<< orphan*/  OPENSSL_INIT_THREAD_ASYNC ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_2__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  poolkey ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_2__*) ; 

int FUNC13(size_t max_size, size_t init_size)
{
    async_pool *pool;
    size_t curr_size = 0;

    if (init_size > max_size) {
        FUNC0(ASYNC_F_ASYNC_INIT_THREAD, ASYNC_R_INVALID_POOL_SIZE);
        return 0;
    }

    if (!FUNC3(OPENSSL_INIT_ASYNC, NULL))
        return 0;

    if (!FUNC9(OPENSSL_INIT_THREAD_ASYNC))
        return 0;

    pool = FUNC4(sizeof(*pool));
    if (pool == NULL) {
        FUNC0(ASYNC_F_ASYNC_INIT_THREAD, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    pool->jobs = FUNC11(NULL, init_size);
    if (pool->jobs == NULL) {
        FUNC0(ASYNC_F_ASYNC_INIT_THREAD, ERR_R_MALLOC_FAILURE);
        FUNC2(pool);
        return 0;
    }

    pool->max_size = max_size;

    /* Pre-create jobs as required */
    while (init_size--) {
        ASYNC_JOB *job;
        job = FUNC8();
        if (job == NULL || !FUNC6(&job->fibrectx)) {
            /*
             * Not actually fatal because we already created the pool, just
             * skip creation of any more jobs
             */
            FUNC7(job);
            break;
        }
        job->funcargs = NULL;
        FUNC12(pool->jobs, job); /* Cannot fail due to reserve */
        curr_size++;
    }
    pool->curr_size = curr_size;
    if (!FUNC1(&poolkey, pool)) {
        FUNC0(ASYNC_F_ASYNC_INIT_THREAD, ASYNC_R_FAILED_TO_SET_POOL);
        goto err;
    }

    return 1;
err:
    FUNC5(pool);
    FUNC10(pool->jobs);
    FUNC2(pool);
    return 0;
}