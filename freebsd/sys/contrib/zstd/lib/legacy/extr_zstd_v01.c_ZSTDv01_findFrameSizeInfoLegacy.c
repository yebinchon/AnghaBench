
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blockProperties_t ;
typedef scalar_t__ U32 ;
typedef int BYTE ;


 size_t BLOCKSIZE ;
 size_t ERROR (int ) ;
 size_t ZSTD_blockHeaderSize ;
 int ZSTD_errorFrameSizeInfoLegacy (size_t*,unsigned long long*,size_t) ;
 size_t ZSTD_frameHeaderSize ;
 scalar_t__ ZSTD_magicNumber ;
 scalar_t__ ZSTD_readBE32 (void const*) ;
 size_t ZSTDv01_getcBlockSize (int const*,size_t,int *) ;
 scalar_t__ ZSTDv01_isError (size_t) ;
 int prefix_unknown ;
 int srcSize_wrong ;

void ZSTDv01_findFrameSizeInfoLegacy(const void *src, size_t srcSize, size_t* cSize, unsigned long long* dBound)
{
    const BYTE* ip = (const BYTE*)src;
    size_t remainingSize = srcSize;
    size_t nbBlocks = 0;
    U32 magicNumber;
    blockProperties_t blockProperties;


    if (srcSize < ZSTD_frameHeaderSize+ZSTD_blockHeaderSize) {
        ZSTD_errorFrameSizeInfoLegacy(cSize, dBound, ERROR(srcSize_wrong));
        return;
    }
    magicNumber = ZSTD_readBE32(src);
    if (magicNumber != ZSTD_magicNumber) {
        ZSTD_errorFrameSizeInfoLegacy(cSize, dBound, ERROR(prefix_unknown));
        return;
    }
    ip += ZSTD_frameHeaderSize; remainingSize -= ZSTD_frameHeaderSize;


    while (1)
    {
        size_t blockSize = ZSTDv01_getcBlockSize(ip, remainingSize, &blockProperties);
        if (ZSTDv01_isError(blockSize)) {
            ZSTD_errorFrameSizeInfoLegacy(cSize, dBound, blockSize);
            return;
        }

        ip += ZSTD_blockHeaderSize;
        remainingSize -= ZSTD_blockHeaderSize;
        if (blockSize > remainingSize) {
            ZSTD_errorFrameSizeInfoLegacy(cSize, dBound, ERROR(srcSize_wrong));
            return;
        }

        if (blockSize == 0) break;

        ip += blockSize;
        remainingSize -= blockSize;
        nbBlocks++;
    }

    *cSize = ip - (const BYTE*)src;
    *dBound = nbBlocks * BLOCKSIZE;
}
