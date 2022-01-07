
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
 size_t ZSTD_blockHeaderSize ;
 size_t ZSTD_copyUncompressedBlock (int *,int,int const*,size_t) ;
 size_t ZSTD_decompressBlock (void*,int *,int,int const*,size_t) ;
 size_t ZSTD_frameHeaderSize ;
 scalar_t__ ZSTD_magicNumber ;
 scalar_t__ ZSTD_readBE32 (void const*) ;
 size_t ZSTDv01_getcBlockSize (int const*,int,TYPE_1__*) ;
 scalar_t__ ZSTDv01_isError (size_t) ;




 int prefix_unknown ;
 int srcSize_wrong ;

size_t ZSTDv01_decompressDCtx(void* ctx, void* dst, size_t maxDstSize, const void* src, size_t srcSize)
{
    const BYTE* ip = (const BYTE*)src;
    const BYTE* iend = ip + srcSize;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* op = ostart;
    BYTE* const oend = ostart + maxDstSize;
    size_t remainingSize = srcSize;
    U32 magicNumber;
    size_t errorCode=0;
    blockProperties_t blockProperties;


    if (srcSize < ZSTD_frameHeaderSize+ZSTD_blockHeaderSize) return ERROR(srcSize_wrong);
    magicNumber = ZSTD_readBE32(src);
    if (magicNumber != ZSTD_magicNumber) return ERROR(prefix_unknown);
    ip += ZSTD_frameHeaderSize; remainingSize -= ZSTD_frameHeaderSize;


    while (1)
    {
        size_t blockSize = ZSTDv01_getcBlockSize(ip, iend-ip, &blockProperties);
        if (ZSTDv01_isError(blockSize)) return blockSize;

        ip += ZSTD_blockHeaderSize;
        remainingSize -= ZSTD_blockHeaderSize;
        if (blockSize > remainingSize) return ERROR(srcSize_wrong);

        switch(blockProperties.blockType)
        {
        case 131:
            errorCode = ZSTD_decompressBlock(ctx, op, oend-op, ip, blockSize);
            break;
        case 129 :
            errorCode = ZSTD_copyUncompressedBlock(op, oend-op, ip, blockSize);
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
        if (blockSize == 0) break;

        if (ZSTDv01_isError(errorCode)) return errorCode;
        op += errorCode;
        ip += blockSize;
        remainingSize -= blockSize;
    }

    return op-ostart;
}
