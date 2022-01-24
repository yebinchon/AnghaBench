#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__ const* workspace; } ;
struct TYPE_5__ {int /*<<< orphan*/  localDict; TYPE_4__ workspace; } ;
typedef  TYPE_1__ ZSTD_CCtx ;

/* Variables and functions */
 size_t FUNC0 (TYPE_4__*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (TYPE_1__ const*) ; 

size_t FUNC3(const ZSTD_CCtx* cctx)
{
    if (cctx==NULL) return 0;   /* support sizeof on NULL */
    /* cctx may be in the workspace */
    return (cctx->workspace.workspace == cctx ? 0 : sizeof(*cctx))
           + FUNC0(&cctx->workspace)
           + FUNC1(cctx->localDict)
           + FUNC2(cctx);
}