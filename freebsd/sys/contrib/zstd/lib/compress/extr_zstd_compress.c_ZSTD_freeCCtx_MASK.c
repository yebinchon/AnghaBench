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
struct TYPE_6__ {int /*<<< orphan*/  customMem; int /*<<< orphan*/  workspace; int /*<<< orphan*/  staticSize; } ;
typedef  TYPE_1__ ZSTD_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  memory_allocation ; 

size_t FUNC4(ZSTD_CCtx* cctx)
{
    if (cctx==NULL) return 0;   /* support free on NULL */
    FUNC0(cctx->staticSize, memory_allocation,
                    "not compatible with static CCtx");
    {
        int cctxInWorkspace = FUNC1(&cctx->workspace, cctx);
        FUNC3(cctx);
        if (!cctxInWorkspace) {
            FUNC2(cctx, cctx->customMem);
        }
    }
    return 0;
}