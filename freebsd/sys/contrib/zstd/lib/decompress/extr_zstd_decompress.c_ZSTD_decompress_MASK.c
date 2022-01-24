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
typedef  int /*<<< orphan*/  ZSTD_DCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 size_t FUNC2 (int /*<<< orphan*/ *,void*,size_t,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  memory_allocation ; 

size_t FUNC5(void* dst, size_t dstCapacity, const void* src, size_t srcSize)
{
#if defined(ZSTD_HEAPMODE) && (ZSTD_HEAPMODE>=1)
    size_t regenSize;
    ZSTD_DCtx* const dctx = ZSTD_createDCtx();
    RETURN_ERROR_IF(dctx==NULL, memory_allocation);
    regenSize = ZSTD_decompressDCtx(dctx, dst, dstCapacity, src, srcSize);
    ZSTD_freeDCtx(dctx);
    return regenSize;
#else   /* stack mode */
    ZSTD_DCtx dctx;
    FUNC4(&dctx);
    return FUNC2(&dctx, dst, dstCapacity, src, srcSize);
#endif
}