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
struct TYPE_5__ {size_t lowerBound; size_t upperBound; } ;
typedef  TYPE_1__ ZSTD_bounds ;
struct TYPE_6__ {scalar_t__ streamStage; size_t maxWindowSize; } ;
typedef  TYPE_2__ ZSTD_DCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_d_windowLogMax ; 
 int /*<<< orphan*/  parameter_outOfBound ; 
 int /*<<< orphan*/  stage_wrong ; 
 scalar_t__ zdss_init ; 

size_t FUNC2(ZSTD_DCtx* dctx, size_t maxWindowSize)
{
    ZSTD_bounds const bounds = FUNC1(ZSTD_d_windowLogMax);
    size_t const min = (size_t)1 << bounds.lowerBound;
    size_t const max = (size_t)1 << bounds.upperBound;
    FUNC0(dctx->streamStage != zdss_init, stage_wrong);
    FUNC0(maxWindowSize < min, parameter_outOfBound);
    FUNC0(maxWindowSize > max, parameter_outOfBound);
    dctx->maxWindowSize = maxWindowSize;
    return 0;
}