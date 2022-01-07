
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DTable ;
 int HUFv07_CREATE_STATIC_DTABLEX4 (int ,int ) ;
 int HUFv07_TABLELOG_MAX ;
 size_t HUFv07_decompress1X4_DCtx (int ,void*,size_t,void const*,size_t) ;

size_t HUFv07_decompress1X4 (void* dst, size_t dstSize, const void* cSrc, size_t cSrcSize)
{
    HUFv07_CREATE_STATIC_DTABLEX4(DTable, HUFv07_TABLELOG_MAX);
    return HUFv07_decompress1X4_DCtx(DTable, dst, dstSize, cSrc, cSrcSize);
}
