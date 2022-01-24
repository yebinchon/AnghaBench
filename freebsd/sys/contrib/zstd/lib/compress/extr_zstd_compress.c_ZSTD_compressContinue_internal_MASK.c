#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  dictLimit; } ;
struct TYPE_18__ {TYPE_8__ window; int /*<<< orphan*/  nextToUpdate; } ;
typedef  TYPE_5__ ZSTD_matchState_t ;
struct TYPE_17__ {scalar_t__ contentSizeFlag; } ;
struct TYPE_15__ {scalar_t__ enableLdm; } ;
struct TYPE_20__ {TYPE_4__ fParams; TYPE_2__ ldmParams; } ;
struct TYPE_16__ {TYPE_8__ window; } ;
struct TYPE_14__ {TYPE_5__ matchState; } ;
struct TYPE_19__ {scalar_t__ stage; scalar_t__ pledgedSrcSizePlusOne; scalar_t__ consumedSrcSize; TYPE_7__ appliedParams; int /*<<< orphan*/  producedCSize; scalar_t__ blockSize; int /*<<< orphan*/  workspace; TYPE_3__ ldmState; int /*<<< orphan*/  dictID; TYPE_1__ blockState; } ;
typedef  TYPE_6__ ZSTD_CCtx ;
typedef  scalar_t__ U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC1 (size_t const) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*,...) ; 
 unsigned long long ZSTD_CONTENTSIZE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 size_t FUNC4 (TYPE_6__*,void*,size_t,void const*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (TYPE_6__*,void*,size_t,void const*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__* const,int /*<<< orphan*/ *,TYPE_7__*,void const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,void const*,size_t) ; 
 size_t FUNC8 (void*,size_t,TYPE_7__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ ZSTDcs_created ; 
 scalar_t__ ZSTDcs_init ; 
 scalar_t__ ZSTDcs_ongoing ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  srcSize_wrong ; 
 int /*<<< orphan*/  stage_wrong ; 

__attribute__((used)) static size_t FUNC10 (ZSTD_CCtx* cctx,
                              void* dst, size_t dstCapacity,
                        const void* src, size_t srcSize,
                               U32 frame, U32 lastFrameChunk)
{
    ZSTD_matchState_t* const ms = &cctx->blockState.matchState;
    size_t fhSize = 0;

    FUNC0(5, "ZSTD_compressContinue_internal, stage: %u, srcSize: %u",
                cctx->stage, (unsigned)srcSize);
    FUNC2(cctx->stage==ZSTDcs_created, stage_wrong,
                    "missing init (ZSTD_compressBegin)");

    if (frame && (cctx->stage==ZSTDcs_init)) {
        fhSize = FUNC8(dst, dstCapacity, &cctx->appliedParams,
                                       cctx->pledgedSrcSizePlusOne-1, cctx->dictID);
        FUNC1(fhSize);
        FUNC9(fhSize <= dstCapacity);
        dstCapacity -= fhSize;
        dst = (char*)dst + fhSize;
        cctx->stage = ZSTDcs_ongoing;
    }

    if (!srcSize) return fhSize;  /* do not generate an empty block if no input */

    if (!FUNC7(&ms->window, src, srcSize)) {
        ms->nextToUpdate = ms->window.dictLimit;
    }
    if (cctx->appliedParams.ldmParams.enableLdm) {
        FUNC7(&cctx->ldmState.window, src, srcSize);
    }

    if (!frame) {
        /* overflow check and correction for block mode */
        FUNC6(
            ms, &cctx->workspace, &cctx->appliedParams,
            src, (BYTE const*)src + srcSize);
    }

    FUNC0(5, "ZSTD_compressContinue_internal (blockSize=%u)", (unsigned)cctx->blockSize);
    {   size_t const cSize = frame ?
                             FUNC5 (cctx, dst, dstCapacity, src, srcSize, lastFrameChunk) :
                             FUNC4 (cctx, dst, dstCapacity, src, srcSize, 0 /* frame */);
        FUNC1(cSize);
        cctx->consumedSrcSize += srcSize;
        cctx->producedCSize += (cSize + fhSize);
        FUNC9(!(cctx->appliedParams.fParams.contentSizeFlag && cctx->pledgedSrcSizePlusOne == 0));
        if (cctx->pledgedSrcSizePlusOne != 0) {  /* control src size */
            FUNC3(ZSTD_CONTENTSIZE_UNKNOWN == (unsigned long long)-1);
            FUNC2(
                cctx->consumedSrcSize+1 > cctx->pledgedSrcSizePlusOne,
                srcSize_wrong,
                "error : pledgedSrcSize = %u, while realSrcSize >= %u",
                (unsigned)cctx->pledgedSrcSizePlusOne-1,
                (unsigned)cctx->consumedSrcSize);
        }
        return cSize + fhSize;
    }
}