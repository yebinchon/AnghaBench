#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t varInds_t ;
struct TYPE_4__ {scalar_t__ cLevel; int /*<<< orphan*/  dictBufferSize; int /*<<< orphan*/  dictBuffer; int /*<<< orphan*/  cctx; TYPE_1__* comprParams; } ;
struct TYPE_3__ {scalar_t__* vals; } ;
typedef  TYPE_2__ BMK_initCCtxArgs ;

/* Variables and functions */
 size_t NUM_PARAMS ; 
 scalar_t__ PARAM_UNSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ZSTD_c_compressionLevel ; 
 int /*<<< orphan*/  ZSTD_reset_session_and_parameters ; 
 int /*<<< orphan*/ * cctxSetParamTable ; 

__attribute__((used)) static size_t FUNC3(void* payload) {
    const BMK_initCCtxArgs* ag = (const BMK_initCCtxArgs*)payload;
    varInds_t i;
    FUNC1(ag->cctx, ZSTD_reset_session_and_parameters);
    FUNC2(ag->cctx, ZSTD_c_compressionLevel, ag->cLevel);

    for(i = 0; i < NUM_PARAMS; i++) {
        if(ag->comprParams->vals[i] != PARAM_UNSET)
        FUNC2(ag->cctx, cctxSetParamTable[i], ag->comprParams->vals[i]);
    }
    FUNC0(ag->cctx, ag->dictBuffer, ag->dictBufferSize);

    return 0;
}