#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ blocked; int /*<<< orphan*/ * currjob; int /*<<< orphan*/  dispatcher; } ;
typedef  TYPE_1__ async_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_F_ASYNC_CTX_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  OPENSSL_INIT_THREAD_ASYNC ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ctxkey ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static async_ctx *FUNC6(void)
{
    async_ctx *nctx;

    if (!FUNC5(OPENSSL_INIT_THREAD_ASYNC))
        return NULL;

    nctx = FUNC3(sizeof(*nctx));
    if (nctx == NULL) {
        FUNC0(ASYNC_F_ASYNC_CTX_NEW, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    FUNC4(&nctx->dispatcher);
    nctx->currjob = NULL;
    nctx->blocked = 0;
    if (!FUNC1(&ctxkey, nctx))
        goto err;

    return nctx;
err:
    FUNC2(nctx);

    return NULL;
}