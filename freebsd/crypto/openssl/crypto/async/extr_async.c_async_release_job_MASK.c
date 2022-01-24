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
struct TYPE_5__ {int /*<<< orphan*/  jobs; } ;
typedef  TYPE_1__ async_pool ;
struct TYPE_6__ {int /*<<< orphan*/ * funcargs; } ;
typedef  TYPE_2__ ASYNC_JOB ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  poolkey ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(ASYNC_JOB *job) {
    async_pool *pool;

    pool = (async_pool *)FUNC0(&poolkey);
    FUNC1(job->funcargs);
    job->funcargs = NULL;
    FUNC2(pool->jobs, job);
}