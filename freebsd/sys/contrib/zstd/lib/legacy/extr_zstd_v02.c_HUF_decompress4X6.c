
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int DTable ;
 size_t ERROR (int ) ;
 int HUF_CREATE_STATIC_DTABLEX6 (int ,int ) ;
 int HUF_MAX_TABLELOG ;
 size_t HUF_decompress4X6_usingDTable (void*,size_t,int const*,size_t,int ) ;
 scalar_t__ HUF_isError (size_t) ;
 size_t HUF_readDTableX6 (int ,void const*,size_t) ;
 int srcSize_wrong ;

__attribute__((used)) static size_t HUF_decompress4X6 (void* dst, size_t dstSize, const void* cSrc, size_t cSrcSize)
{
    HUF_CREATE_STATIC_DTABLEX6(DTable, HUF_MAX_TABLELOG);
    const BYTE* ip = (const BYTE*) cSrc;

    size_t hSize = HUF_readDTableX6 (DTable, cSrc, cSrcSize);
    if (HUF_isError(hSize)) return hSize;
    if (hSize >= cSrcSize) return ERROR(srcSize_wrong);
    ip += hSize;
    cSrcSize -= hSize;

    return HUF_decompress4X6_usingDTable (dst, dstSize, ip, cSrcSize, DTable);
}
