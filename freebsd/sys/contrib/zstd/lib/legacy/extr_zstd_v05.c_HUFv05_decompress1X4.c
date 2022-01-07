
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int DTable ;
 size_t ERROR (int ) ;
 int HUFv05_CREATE_STATIC_DTABLEX4 (int ,int ) ;
 int HUFv05_MAX_TABLELOG ;
 size_t HUFv05_decompress1X4_usingDTable (void*,size_t,int const*,size_t,int ) ;
 scalar_t__ HUFv05_isError (size_t) ;
 size_t HUFv05_readDTableX4 (int ,void const*,size_t) ;
 int srcSize_wrong ;

size_t HUFv05_decompress1X4 (void* dst, size_t dstSize, const void* cSrc, size_t cSrcSize)
{
    HUFv05_CREATE_STATIC_DTABLEX4(DTable, HUFv05_MAX_TABLELOG);
    const BYTE* ip = (const BYTE*) cSrc;

    size_t hSize = HUFv05_readDTableX4 (DTable, cSrc, cSrcSize);
    if (HUFv05_isError(hSize)) return hSize;
    if (hSize >= cSrcSize) return ERROR(srcSize_wrong);
    ip += hSize;
    cSrcSize -= hSize;

    return HUFv05_decompress1X4_usingDTable (dst, dstSize, ip, cSrcSize, DTable);
}
