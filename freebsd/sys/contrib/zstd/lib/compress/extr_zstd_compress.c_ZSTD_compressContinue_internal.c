
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_21__ {int dictLimit; } ;
struct TYPE_18__ {TYPE_8__ window; int nextToUpdate; } ;
typedef TYPE_5__ ZSTD_matchState_t ;
struct TYPE_17__ {scalar_t__ contentSizeFlag; } ;
struct TYPE_15__ {scalar_t__ enableLdm; } ;
struct TYPE_20__ {TYPE_4__ fParams; TYPE_2__ ldmParams; } ;
struct TYPE_16__ {TYPE_8__ window; } ;
struct TYPE_14__ {TYPE_5__ matchState; } ;
struct TYPE_19__ {scalar_t__ stage; scalar_t__ pledgedSrcSizePlusOne; scalar_t__ consumedSrcSize; TYPE_7__ appliedParams; int producedCSize; scalar_t__ blockSize; int workspace; TYPE_3__ ldmState; int dictID; TYPE_1__ blockState; } ;
typedef TYPE_6__ ZSTD_CCtx ;
typedef scalar_t__ U32 ;
typedef int BYTE ;


 int DEBUGLOG (int,char*,unsigned int,...) ;
 int FORWARD_IF_ERROR (size_t const) ;
 int RETURN_ERROR_IF (int,int ,char*,...) ;
 unsigned long long ZSTD_CONTENTSIZE_UNKNOWN ;
 int ZSTD_STATIC_ASSERT (int) ;
 size_t ZSTD_compressBlock_internal (TYPE_6__*,void*,size_t,void const*,size_t,int ) ;
 size_t ZSTD_compress_frameChunk (TYPE_6__*,void*,size_t,void const*,size_t,scalar_t__) ;
 int ZSTD_overflowCorrectIfNeeded (TYPE_5__* const,int *,TYPE_7__*,void const*,int const*) ;
 int ZSTD_window_update (TYPE_8__*,void const*,size_t) ;
 size_t ZSTD_writeFrameHeader (void*,size_t,TYPE_7__*,scalar_t__,int ) ;
 scalar_t__ ZSTDcs_created ;
 scalar_t__ ZSTDcs_init ;
 scalar_t__ ZSTDcs_ongoing ;
 int assert (int) ;
 int srcSize_wrong ;
 int stage_wrong ;

__attribute__((used)) static size_t ZSTD_compressContinue_internal (ZSTD_CCtx* cctx,
                              void* dst, size_t dstCapacity,
                        const void* src, size_t srcSize,
                               U32 frame, U32 lastFrameChunk)
{
    ZSTD_matchState_t* const ms = &cctx->blockState.matchState;
    size_t fhSize = 0;

    DEBUGLOG(5, "ZSTD_compressContinue_internal, stage: %u, srcSize: %u",
                cctx->stage, (unsigned)srcSize);
    RETURN_ERROR_IF(cctx->stage==ZSTDcs_created, stage_wrong,
                    "missing init (ZSTD_compressBegin)");

    if (frame && (cctx->stage==ZSTDcs_init)) {
        fhSize = ZSTD_writeFrameHeader(dst, dstCapacity, &cctx->appliedParams,
                                       cctx->pledgedSrcSizePlusOne-1, cctx->dictID);
        FORWARD_IF_ERROR(fhSize);
        assert(fhSize <= dstCapacity);
        dstCapacity -= fhSize;
        dst = (char*)dst + fhSize;
        cctx->stage = ZSTDcs_ongoing;
    }

    if (!srcSize) return fhSize;

    if (!ZSTD_window_update(&ms->window, src, srcSize)) {
        ms->nextToUpdate = ms->window.dictLimit;
    }
    if (cctx->appliedParams.ldmParams.enableLdm) {
        ZSTD_window_update(&cctx->ldmState.window, src, srcSize);
    }

    if (!frame) {

        ZSTD_overflowCorrectIfNeeded(
            ms, &cctx->workspace, &cctx->appliedParams,
            src, (BYTE const*)src + srcSize);
    }

    DEBUGLOG(5, "ZSTD_compressContinue_internal (blockSize=%u)", (unsigned)cctx->blockSize);
    { size_t const cSize = frame ?
                             ZSTD_compress_frameChunk (cctx, dst, dstCapacity, src, srcSize, lastFrameChunk) :
                             ZSTD_compressBlock_internal (cctx, dst, dstCapacity, src, srcSize, 0 );
        FORWARD_IF_ERROR(cSize);
        cctx->consumedSrcSize += srcSize;
        cctx->producedCSize += (cSize + fhSize);
        assert(!(cctx->appliedParams.fParams.contentSizeFlag && cctx->pledgedSrcSizePlusOne == 0));
        if (cctx->pledgedSrcSizePlusOne != 0) {
            ZSTD_STATIC_ASSERT(ZSTD_CONTENTSIZE_UNKNOWN == (unsigned long long)-1);
            RETURN_ERROR_IF(
                cctx->consumedSrcSize+1 > cctx->pledgedSrcSizePlusOne,
                srcSize_wrong,
                "error : pledgedSrcSize = %u, while realSrcSize >= %u",
                (unsigned)cctx->pledgedSrcSizePlusOne-1,
                (unsigned)cctx->consumedSrcSize);
        }
        return cSize + fhSize;
    }
}
