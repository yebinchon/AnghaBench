
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ blockType; } ;
typedef TYPE_1__ blockProperties_t ;
struct TYPE_7__ {size_t expected; void* previousDstEnd; int phase; scalar_t__ bType; void* base; } ;
typedef TYPE_2__ ZSTD_DCtx ;
typedef scalar_t__ U32 ;


 size_t ERROR (int ) ;
 int GENERIC ;
 scalar_t__ MEM_readLE32 (void const*) ;
 void* ZSTD_blockHeaderSize ;
 size_t ZSTD_copyUncompressedBlock (void*,size_t,void const*,size_t) ;
 size_t ZSTD_decompressBlock (TYPE_2__*,void*,size_t,void const*,size_t) ;
 size_t ZSTD_getcBlockSize (void const*,void*,TYPE_1__*) ;
 scalar_t__ ZSTD_isError (size_t) ;
 scalar_t__ ZSTD_magicNumber ;




 int prefix_unknown ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTD_decompressContinue(ZSTD_DCtx* ctx, void* dst, size_t maxDstSize, const void* src, size_t srcSize)
{

    if (srcSize != ctx->expected) return ERROR(srcSize_wrong);
    if (dst != ctx->previousDstEnd)
        ctx->base = dst;


    if (ctx->phase == 0)
    {

        U32 magicNumber = MEM_readLE32(src);
        if (magicNumber != ZSTD_magicNumber) return ERROR(prefix_unknown);
        ctx->phase = 1;
        ctx->expected = ZSTD_blockHeaderSize;
        return 0;
    }


    if (ctx->phase == 1)
    {
        blockProperties_t bp;
        size_t blockSize = ZSTD_getcBlockSize(src, ZSTD_blockHeaderSize, &bp);
        if (ZSTD_isError(blockSize)) return blockSize;
        if (bp.blockType == 130)
        {
            ctx->expected = 0;
            ctx->phase = 0;
        }
        else
        {
            ctx->expected = blockSize;
            ctx->bType = bp.blockType;
            ctx->phase = 2;
        }

        return 0;
    }


    {
        size_t rSize;
        switch(ctx->bType)
        {
        case 131:
            rSize = ZSTD_decompressBlock(ctx, dst, maxDstSize, src, srcSize);
            break;
        case 129 :
            rSize = ZSTD_copyUncompressedBlock(dst, maxDstSize, src, srcSize);
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
        ctx->phase = 1;
        ctx->expected = ZSTD_blockHeaderSize;
        ctx->previousDstEnd = (void*)( ((char*)dst) + rSize);
        return rSize;
    }

}
