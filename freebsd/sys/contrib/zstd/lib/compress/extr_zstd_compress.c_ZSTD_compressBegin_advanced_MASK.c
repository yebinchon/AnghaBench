#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_parameters ;
typedef  int /*<<< orphan*/  ZSTD_CCtx_params ;
struct TYPE_4__ {int /*<<< orphan*/  requestedParams; } ;
typedef  TYPE_1__ ZSTD_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (TYPE_1__*,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned long long) ; 
 int /*<<< orphan*/  ZSTD_dct_auto ; 
 int /*<<< orphan*/  ZSTD_dtlm_fast ; 

size_t FUNC2(ZSTD_CCtx* cctx,
                             const void* dict, size_t dictSize,
                                   ZSTD_parameters params, unsigned long long pledgedSrcSize)
{
    ZSTD_CCtx_params const cctxParams =
            FUNC0(&cctx->requestedParams, params);
    return FUNC1(cctx,
                                            dict, dictSize, ZSTD_dct_auto, ZSTD_dtlm_fast,
                                            NULL /*cdict*/,
                                            &cctxParams, pledgedSrcSize);
}