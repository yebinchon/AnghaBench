
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blockProperties_t ;
typedef int BYTE ;


 size_t BLOCKSIZE ;
 size_t ERROR (int ) ;
 scalar_t__ MEM_readLE32 (void const*) ;
 int ZSTD_errorFrameSizeInfoLegacy (size_t*,unsigned long long*,size_t) ;
 scalar_t__ ZSTDv05_MAGICNUMBER ;
 scalar_t__ ZSTDv05_blockHeaderSize ;
 size_t ZSTDv05_frameHeaderSize_min ;
 size_t ZSTDv05_getcBlockSize (int const*,size_t,int *) ;
 scalar_t__ ZSTDv05_isError (size_t) ;
 int prefix_unknown ;
 int srcSize_wrong ;

void ZSTDv05_findFrameSizeInfoLegacy(const void *src, size_t srcSize, size_t* cSize, unsigned long long* dBound)
{
    const BYTE* ip = (const BYTE*)src;
    size_t remainingSize = srcSize;
    size_t nbBlocks = 0;
    blockProperties_t blockProperties;


    if (srcSize < ZSTDv05_frameHeaderSize_min) {
        ZSTD_errorFrameSizeInfoLegacy(cSize, dBound, ERROR(srcSize_wrong));
        return;
    }
    if (MEM_readLE32(src) != ZSTDv05_MAGICNUMBER) {
        ZSTD_errorFrameSizeInfoLegacy(cSize, dBound, ERROR(prefix_unknown));
        return;
    }
    ip += ZSTDv05_frameHeaderSize_min; remainingSize -= ZSTDv05_frameHeaderSize_min;


    while (1)
    {
        size_t cBlockSize = ZSTDv05_getcBlockSize(ip, remainingSize, &blockProperties);
        if (ZSTDv05_isError(cBlockSize)) {
            ZSTD_errorFrameSizeInfoLegacy(cSize, dBound, cBlockSize);
            return;
        }

        ip += ZSTDv05_blockHeaderSize;
        remainingSize -= ZSTDv05_blockHeaderSize;
        if (cBlockSize > remainingSize) {
            ZSTD_errorFrameSizeInfoLegacy(cSize, dBound, ERROR(srcSize_wrong));
            return;
        }

        if (cBlockSize == 0) break;

        ip += cBlockSize;
        remainingSize -= cBlockSize;
        nbBlocks++;
    }

    *cSize = ip - (const BYTE*)src;
    *dBound = nbBlocks * BLOCKSIZE;
}
