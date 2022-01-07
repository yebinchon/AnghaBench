
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ offcode_repeatMode; } ;
struct TYPE_20__ {TYPE_4__ fse; } ;
struct TYPE_18__ {TYPE_9__ entropy; } ;
typedef TYPE_6__ ZSTD_compressedBlockState_t ;
struct TYPE_13__ {scalar_t__ dictLimit; } ;
struct TYPE_14__ {scalar_t__ nextToUpdate; TYPE_1__ window; } ;
struct TYPE_17__ {TYPE_6__* prevCBlock; TYPE_6__* nextCBlock; TYPE_2__ matchState; } ;
struct TYPE_15__ {scalar_t__ collectSequences; } ;
struct TYPE_19__ {TYPE_5__ blockState; int isFirstBlock; int bmi2; int entropyWorkspace; int appliedParams; int seqStore; TYPE_3__ seqCollector; } ;
typedef TYPE_7__ ZSTD_CCtx ;
typedef size_t U32 ;
typedef int BYTE ;


 int DEBUGLOG (int,char*,unsigned int,unsigned int,unsigned int) ;
 int FORWARD_IF_ERROR (size_t const) ;
 scalar_t__ FSE_repeat_check ;
 scalar_t__ FSE_repeat_valid ;
 int HUF_WORKSPACE_SIZE ;
 size_t ZSTD_buildSeqStore (TYPE_7__*,void const*,size_t) ;
 size_t ZSTD_compressSequences (int *,TYPE_9__*,TYPE_9__*,int *,void*,size_t,size_t,int ,int ,int ) ;
 int ZSTD_copyBlockSequences (TYPE_7__*) ;
 int ZSTD_isError (size_t) ;
 scalar_t__ ZSTD_isRLE (int const*,size_t) ;
 size_t const ZSTDbss_noCompress ;

__attribute__((used)) static size_t ZSTD_compressBlock_internal(ZSTD_CCtx* zc,
                                        void* dst, size_t dstCapacity,
                                        const void* src, size_t srcSize, U32 frame)
{




    const U32 rleMaxLength = 25;
    size_t cSize;
    const BYTE* ip = (const BYTE*)src;
    BYTE* op = (BYTE*)dst;
    DEBUGLOG(5, "ZSTD_compressBlock_internal (dstCapacity=%u, dictLimit=%u, nextToUpdate=%u)",
                (unsigned)dstCapacity, (unsigned)zc->blockState.matchState.window.dictLimit,
                (unsigned)zc->blockState.matchState.nextToUpdate);

    { const size_t bss = ZSTD_buildSeqStore(zc, src, srcSize);
        FORWARD_IF_ERROR(bss);
        if (bss == ZSTDbss_noCompress) { cSize = 0; goto out; }
    }

    if (zc->seqCollector.collectSequences) {
        ZSTD_copyBlockSequences(zc);
        return 0;
    }


    cSize = ZSTD_compressSequences(&zc->seqStore,
            &zc->blockState.prevCBlock->entropy, &zc->blockState.nextCBlock->entropy,
            &zc->appliedParams,
            dst, dstCapacity,
            srcSize,
            zc->entropyWorkspace, HUF_WORKSPACE_SIZE ,
            zc->bmi2);

    if (frame &&




        !zc->isFirstBlock &&
        cSize < rleMaxLength &&
        ZSTD_isRLE(ip, srcSize))
    {
        cSize = 1;
        op[0] = ip[0];
    }

out:
    if (!ZSTD_isError(cSize) && cSize > 1) {

        ZSTD_compressedBlockState_t* const tmp = zc->blockState.prevCBlock;
        zc->blockState.prevCBlock = zc->blockState.nextCBlock;
        zc->blockState.nextCBlock = tmp;
    }




    if (zc->blockState.prevCBlock->entropy.fse.offcode_repeatMode == FSE_repeat_valid)
        zc->blockState.prevCBlock->entropy.fse.offcode_repeatMode = FSE_repeat_check;

    return cSize;
}
