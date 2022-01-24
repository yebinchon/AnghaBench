#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_CCtx ;
struct TYPE_3__ {unsigned int totalCCtx; int /*<<< orphan*/  poolMutex; int /*<<< orphan*/ * cctx; } ;
typedef  TYPE_1__ ZSTDMT_CCtxPool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static size_t FUNC4(ZSTDMT_CCtxPool* cctxPool)
{
    FUNC0(&cctxPool->poolMutex);
    {   unsigned const nbWorkers = cctxPool->totalCCtx;
        size_t const poolSize = sizeof(*cctxPool)
                                + (nbWorkers-1) * sizeof(ZSTD_CCtx*);
        unsigned u;
        size_t totalCCtxSize = 0;
        for (u=0; u<nbWorkers; u++) {
            totalCCtxSize += FUNC2(cctxPool->cctx[u]);
        }
        FUNC1(&cctxPool->poolMutex);
        FUNC3(nbWorkers > 0);
        return poolSize + totalCCtxSize;
    }
}