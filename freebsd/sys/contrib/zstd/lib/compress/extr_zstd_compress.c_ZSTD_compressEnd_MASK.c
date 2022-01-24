#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ contentSizeFlag; } ;
struct TYPE_8__ {TYPE_1__ fParams; } ;
struct TYPE_9__ {scalar_t__ pledgedSrcSizePlusOne; scalar_t__ consumedSrcSize; TYPE_2__ appliedParams; } ;
typedef  TYPE_3__ ZSTD_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t const) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 unsigned long long ZSTD_CONTENTSIZE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 size_t FUNC4 (TYPE_3__*,void*,size_t,void const*,size_t,int,int) ; 
 size_t FUNC5 (TYPE_3__*,char*,size_t const) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  srcSize_wrong ; 

size_t FUNC7 (ZSTD_CCtx* cctx,
                         void* dst, size_t dstCapacity,
                   const void* src, size_t srcSize)
{
    size_t endResult;
    size_t const cSize = FUNC4(cctx,
                                dst, dstCapacity, src, srcSize,
                                1 /* frame mode */, 1 /* last chunk */);
    FUNC1(cSize);
    endResult = FUNC5(cctx, (char*)dst + cSize, dstCapacity-cSize);
    FUNC1(endResult);
    FUNC6(!(cctx->appliedParams.fParams.contentSizeFlag && cctx->pledgedSrcSizePlusOne == 0));
    if (cctx->pledgedSrcSizePlusOne != 0) {  /* control src size */
        FUNC3(ZSTD_CONTENTSIZE_UNKNOWN == (unsigned long long)-1);
        FUNC0(4, "end of frame : controlling src size");
        FUNC2(
            cctx->pledgedSrcSizePlusOne != cctx->consumedSrcSize+1,
            srcSize_wrong,
             "error : pledgedSrcSize = %u, while realSrcSize = %u",
            (unsigned)cctx->pledgedSrcSizePlusOne-1,
            (unsigned)cctx->consumedSrcSize);
    }
    return cSize + endResult;
}