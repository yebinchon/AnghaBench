
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int DTable ;
 size_t ERROR (int ) ;
 int HUF_CREATE_STATIC_DTABLEX2 (int ,int ) ;
 int HUF_MAX_TABLELOG ;
 size_t HUF_decompress4X2_usingDTable (void*,size_t,int const*,size_t,int ) ;
 scalar_t__ HUF_isError (size_t) ;
 size_t HUF_readDTableX2 (int ,void const*,size_t) ;
 int srcSize_wrong ;

__attribute__((used)) static size_t HUF_decompress4X2 (void* dst, size_t dstSize, const void* cSrc, size_t cSrcSize)
{
    HUF_CREATE_STATIC_DTABLEX2(DTable, HUF_MAX_TABLELOG);
    const BYTE* ip = (const BYTE*) cSrc;
    size_t errorCode;

    errorCode = HUF_readDTableX2 (DTable, cSrc, cSrcSize);
    if (HUF_isError(errorCode)) return errorCode;
    if (errorCode >= cSrcSize) return ERROR(srcSize_wrong);
    ip += errorCode;
    cSrcSize -= errorCode;

    return HUF_decompress4X2_usingDTable (dst, dstSize, ip, cSrcSize, DTable);
}
