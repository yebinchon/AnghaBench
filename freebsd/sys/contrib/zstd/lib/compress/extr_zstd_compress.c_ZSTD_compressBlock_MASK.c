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
typedef  int /*<<< orphan*/  ZSTD_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,void*,size_t,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  srcSize_wrong ; 

size_t FUNC4(ZSTD_CCtx* cctx, void* dst, size_t dstCapacity, const void* src, size_t srcSize)
{
    FUNC0(5, "ZSTD_compressBlock: srcSize = %u", (unsigned)srcSize);
    { size_t const blockSizeMax = FUNC3(cctx);
      FUNC1(srcSize > blockSizeMax, srcSize_wrong); }

    return FUNC2(cctx, dst, dstCapacity, src, srcSize, 0 /* frame mode */, 0 /* last chunk */);
}