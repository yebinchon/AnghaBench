#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_buffered_policy_e ;
typedef  int /*<<< orphan*/  ZSTD_CDict ;
typedef  int /*<<< orphan*/  ZSTD_CCtx_params ;
typedef  int /*<<< orphan*/  ZSTD_CCtx ;
typedef  scalar_t__ U64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const,scalar_t__,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,scalar_t__) ; 

__attribute__((used)) static size_t FUNC4(ZSTD_CCtx* cctx,
                            const ZSTD_CDict* cdict,
                            const ZSTD_CCtx_params* params,
                            U64 pledgedSrcSize,
                            ZSTD_buffered_policy_e zbuff)
{

    FUNC0(4, "ZSTD_resetCCtx_usingCDict (pledgedSrcSize=%u)",
                (unsigned)pledgedSrcSize);

    if (FUNC3(cdict, params, pledgedSrcSize)) {
        return FUNC1(
            cctx, cdict, *params, pledgedSrcSize, zbuff);
    } else {
        return FUNC2(
            cctx, cdict, *params, pledgedSrcSize, zbuff);
    }
}