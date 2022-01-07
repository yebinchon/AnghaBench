
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int blockType; } ;
typedef TYPE_1__ blockProperties_t ;
typedef scalar_t__ U32 ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 int GENERIC ;
 scalar_t__ MEM_readLE32 (void const*) ;
 size_t ZSTD_blockHeaderSize ;
 size_t ZSTD_copyUncompressedBlock (int *,int,int const*,size_t) ;
 size_t ZSTD_decompressBlock (void*,int *,int,int const*,size_t) ;
 size_t ZSTD_frameHeaderSize ;
 size_t ZSTD_getcBlockSize (int const*,int,TYPE_1__*) ;
 scalar_t__ ZSTD_isError (size_t) ;
 scalar_t__ ZSTD_magicNumber ;




 int prefix_unknown ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTD_decompressDCtx(void* ctx, void* dst, size_t maxDstSize, const void* src, size_t srcSize)
{
    const BYTE* ip = (const BYTE*)src;
    const BYTE* iend = ip + srcSize;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* op = ostart;
    BYTE* const oend = ostart + maxDstSize;
    size_t remainingSize = srcSize;
    U32 magicNumber;
    blockProperties_t blockProperties;


    if (srcSize < ZSTD_frameHeaderSize+ZSTD_blockHeaderSize) return ERROR(srcSize_wrong);
    magicNumber = MEM_readLE32(src);
    if (magicNumber != ZSTD_magicNumber) return ERROR(prefix_unknown);
    ip += ZSTD_frameHeaderSize; remainingSize -= ZSTD_frameHeaderSize;


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
            decodedSize = ZSTD_decompressBlock(ctx, op, oend-op, ip, cBlockSize);
            break;
        case 129 :
            decodedSize = ZSTD_copyUncompressedBlock(op, oend-op, ip, cBlockSize);
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
