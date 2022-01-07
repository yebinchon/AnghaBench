
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int DTable ;
 int FSE_ERROR_srcSize_wrong ;
 scalar_t__ FSE_isError (size_t) ;
 int HUF_CREATE_STATIC_DTABLE (int ,int ) ;
 int HUF_MAX_TABLELOG ;
 size_t HUF_decompress_usingDTable (void*,size_t,int const*,size_t,int ) ;
 size_t HUF_readDTable (int ,void const*,size_t) ;

__attribute__((used)) static size_t HUF_decompress (void* dst, size_t maxDstSize, const void* cSrc, size_t cSrcSize)
{
    HUF_CREATE_STATIC_DTABLE(DTable, HUF_MAX_TABLELOG);
    const BYTE* ip = (const BYTE*) cSrc;
    size_t errorCode;

    errorCode = HUF_readDTable (DTable, cSrc, cSrcSize);
    if (FSE_isError(errorCode)) return errorCode;
    if (errorCode >= cSrcSize) return (size_t)-FSE_ERROR_srcSize_wrong;
    ip += errorCode;
    cSrcSize -= errorCode;

    return HUF_decompress_usingDTable (dst, maxDstSize, ip, cSrcSize, DTable);
}
