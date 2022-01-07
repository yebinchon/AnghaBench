
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U32 ;
typedef int HUFv07_DTable ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 size_t HUFv07_decompress1X2_DCtx (int *,void*,size_t,void const*,size_t) ;
 size_t HUFv07_decompress1X4_DCtx (int *,void*,size_t,void const*,size_t) ;
 scalar_t__ HUFv07_selectDecoder (size_t,size_t) ;
 int corruption_detected ;
 int dstSize_tooSmall ;
 int memcpy (void*,void const*,size_t) ;
 int memset (void*,int const,size_t) ;

size_t HUFv07_decompress1X_DCtx (HUFv07_DTable* dctx, void* dst, size_t dstSize, const void* cSrc, size_t cSrcSize)
{

    if (dstSize == 0) return ERROR(dstSize_tooSmall);
    if (cSrcSize > dstSize) return ERROR(corruption_detected);
    if (cSrcSize == dstSize) { memcpy(dst, cSrc, dstSize); return dstSize; }
    if (cSrcSize == 1) { memset(dst, *(const BYTE*)cSrc, dstSize); return dstSize; }

    { U32 const algoNb = HUFv07_selectDecoder(dstSize, cSrcSize);
        return algoNb ? HUFv07_decompress1X4_DCtx(dctx, dst, dstSize, cSrc, cSrcSize) :
                        HUFv07_decompress1X2_DCtx(dctx, dst, dstSize, cSrc, cSrcSize) ;
    }
}
