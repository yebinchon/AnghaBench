
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int blockType; } ;
typedef TYPE_1__ blockProperties_t ;
struct TYPE_11__ {char const* dictEnd; char const* previousDstEnd; char const* vBase; char const* base; } ;
typedef TYPE_2__ ZSTD_DCtx ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 int GENERIC ;
 size_t ZSTD_blockHeaderSize ;
 size_t ZSTD_copyRawBlock (int *,int,int const*,size_t) ;
 size_t ZSTD_decodeFrameHeader_Part1 (TYPE_2__*,void const*,size_t) ;
 size_t ZSTD_decodeFrameHeader_Part2 (TYPE_2__*,void const*,size_t) ;
 size_t ZSTD_decompressBlock_internal (TYPE_2__*,int *,int,int const*,size_t) ;
 int ZSTD_decompress_insertDictionary (TYPE_2__*,void const*,size_t) ;
 size_t ZSTD_frameHeaderSize_min ;
 size_t ZSTD_getcBlockSize (int const*,int,TYPE_1__*) ;
 scalar_t__ ZSTD_isError (size_t) ;
 int ZSTD_resetDCtx (TYPE_2__*) ;




 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTD_decompress_usingDict(ZSTD_DCtx* ctx,
                                 void* dst, size_t maxDstSize,
                                 const void* src, size_t srcSize,
                                 const void* dict, size_t dictSize)
{
    const BYTE* ip = (const BYTE*)src;
    const BYTE* iend = ip + srcSize;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* op = ostart;
    BYTE* const oend = ostart + maxDstSize;
    size_t remainingSize = srcSize;
    blockProperties_t blockProperties;


    ZSTD_resetDCtx(ctx);
    if (dict)
    {
        ZSTD_decompress_insertDictionary(ctx, dict, dictSize);
        ctx->dictEnd = ctx->previousDstEnd;
        ctx->vBase = (const char*)dst - ((const char*)(ctx->previousDstEnd) - (const char*)(ctx->base));
        ctx->base = dst;
    }
    else
    {
        ctx->vBase = ctx->base = ctx->dictEnd = dst;
    }


    {
        size_t frameHeaderSize;
        if (srcSize < ZSTD_frameHeaderSize_min+ZSTD_blockHeaderSize) return ERROR(srcSize_wrong);
        frameHeaderSize = ZSTD_decodeFrameHeader_Part1(ctx, src, ZSTD_frameHeaderSize_min);
        if (ZSTD_isError(frameHeaderSize)) return frameHeaderSize;
        if (srcSize < frameHeaderSize+ZSTD_blockHeaderSize) return ERROR(srcSize_wrong);
        ip += frameHeaderSize; remainingSize -= frameHeaderSize;
        frameHeaderSize = ZSTD_decodeFrameHeader_Part2(ctx, src, frameHeaderSize);
        if (ZSTD_isError(frameHeaderSize)) return frameHeaderSize;
    }


    while (1)
    {
        size_t decodedSize=0;
        size_t cBlockSize = ZSTD_getcBlockSize(ip, iend-ip, &blockProperties);
        if (ZSTD_isError(cBlockSize)) return cBlockSize;

        ip += ZSTD_blockHeaderSize;
        remainingSize -= ZSTD_blockHeaderSize;
        if (cBlockSize > remainingSize) return ERROR(srcSize_wrong);

        switch(blockProperties.blockType)
        {
        case 131:
            decodedSize = ZSTD_decompressBlock_internal(ctx, op, oend-op, ip, cBlockSize);
            break;
        case 129 :
            decodedSize = ZSTD_copyRawBlock(op, oend-op, ip, cBlockSize);
            break;
        case 128 :
            return ERROR(GENERIC);
            break;
        case 130 :

            if (remainingSize) return ERROR(srcSize_wrong);
            break;
        default:
            return ERROR(GENERIC);
        }
        if (cBlockSize == 0) break;

        if (ZSTD_isError(decodedSize)) return decodedSize;
        op += decodedSize;
        ip += cBlockSize;
        remainingSize -= cBlockSize;
    }

    return op-ostart;
}
