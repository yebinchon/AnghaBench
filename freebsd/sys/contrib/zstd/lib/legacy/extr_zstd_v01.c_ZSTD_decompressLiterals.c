
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 size_t ERROR (int ) ;
 scalar_t__ FSE_isError (size_t) ;
 int GENERIC ;
 size_t HUF_decompress (int*,size_t,int const*,size_t) ;
 int corruption_detected ;
 int dstSize_tooSmall ;

__attribute__((used)) static size_t ZSTD_decompressLiterals(void* ctx,
                                      void* dst, size_t maxDstSize,
                                const void* src, size_t srcSize)
{
    BYTE* op = (BYTE*)dst;
    BYTE* const oend = op + maxDstSize;
    const BYTE* ip = (const BYTE*)src;
    size_t errorCode;
    size_t litSize;


    if (srcSize <= 3) return ERROR(corruption_detected);

    litSize = ip[1] + (ip[0]<<8);
    litSize += ((ip[-3] >> 3) & 7) << 16;
    op = oend - litSize;

    (void)ctx;
    if (litSize > maxDstSize) return ERROR(dstSize_tooSmall);
    errorCode = HUF_decompress(op, litSize, ip+2, srcSize-2);
    if (FSE_isError(errorCode)) return ERROR(GENERIC);
    return litSize;
}
