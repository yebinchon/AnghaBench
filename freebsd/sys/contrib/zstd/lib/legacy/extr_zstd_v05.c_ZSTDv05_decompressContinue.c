
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int blockType; } ;
typedef TYPE_1__ blockProperties_t ;
struct TYPE_10__ {size_t expected; int stage; size_t headerSize; int bType; char* previousDstEnd; int headerBuffer; } ;
typedef TYPE_2__ ZSTDv05_DCtx ;


 size_t ERROR (int ) ;
 int GENERIC ;
 void* ZSTDv05_blockHeaderSize ;
 int ZSTDv05_checkContinuity (TYPE_2__*,void*) ;
 size_t ZSTDv05_copyRawBlock (void*,size_t,void const*,size_t) ;
 size_t ZSTDv05_decodeFrameHeader_Part1 (TYPE_2__*,void const*,size_t) ;
 size_t ZSTDv05_decodeFrameHeader_Part2 (TYPE_2__*,int ,size_t) ;
 size_t ZSTDv05_decompressBlock_internal (TYPE_2__*,void*,size_t,void const*,size_t) ;
 size_t ZSTDv05_frameHeaderSize_min ;
 size_t ZSTDv05_getcBlockSize (void const*,void*,TYPE_1__*) ;
 int ZSTDv05_isError (size_t const) ;
 int memcpy (int ,void const*,size_t) ;
 int srcSize_wrong ;

size_t ZSTDv05_decompressContinue(ZSTDv05_DCtx* dctx, void* dst, size_t maxDstSize, const void* src, size_t srcSize)
{

    if (srcSize != dctx->expected) return ERROR(srcSize_wrong);
    ZSTDv05_checkContinuity(dctx, dst);


    switch (dctx->stage)
    {
    case 132 :

        if (srcSize != ZSTDv05_frameHeaderSize_min) return ERROR(srcSize_wrong);
        dctx->headerSize = ZSTDv05_decodeFrameHeader_Part1(dctx, src, ZSTDv05_frameHeaderSize_min);
        if (ZSTDv05_isError(dctx->headerSize)) return dctx->headerSize;
        memcpy(dctx->headerBuffer, src, ZSTDv05_frameHeaderSize_min);
        if (dctx->headerSize > ZSTDv05_frameHeaderSize_min) return ERROR(GENERIC);
        dctx->expected = 0;

    case 134:

        { size_t const result = ZSTDv05_decodeFrameHeader_Part2(dctx, dctx->headerBuffer, dctx->headerSize);
            if (ZSTDv05_isError(result)) return result;
            dctx->expected = ZSTDv05_blockHeaderSize;
            dctx->stage = 135;
            return 0;
        }
    case 135:
        {

            blockProperties_t bp;
            size_t blockSize = ZSTDv05_getcBlockSize(src, ZSTDv05_blockHeaderSize, &bp);
            if (ZSTDv05_isError(blockSize)) return blockSize;
            if (bp.blockType == 130) {
                dctx->expected = 0;
                dctx->stage = 132;
            }
            else {
                dctx->expected = blockSize;
                dctx->bType = bp.blockType;
                dctx->stage = 133;
            }
            return 0;
        }
    case 133:
        {

            size_t rSize;
            switch(dctx->bType)
            {
            case 131:
                rSize = ZSTDv05_decompressBlock_internal(dctx, dst, maxDstSize, src, srcSize);
                break;
            case 129 :
                rSize = ZSTDv05_copyRawBlock(dst, maxDstSize, src, srcSize);
                break;
            case 128 :
                return ERROR(GENERIC);
                break;
            case 130 :
                rSize = 0;
                break;
            default:
                return ERROR(GENERIC);
            }
            dctx->stage = 135;
            dctx->expected = ZSTDv05_blockHeaderSize;
            dctx->previousDstEnd = (char*)dst + rSize;
            return rSize;
        }
    default:
        return ERROR(GENERIC);
    }
}
