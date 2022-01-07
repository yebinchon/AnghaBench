
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv07_DCtx ;


 int ZSTDv07_checkContinuity (int *,void*) ;
 int ZSTDv07_copyDCtx (int *,int const*) ;
 size_t ZSTDv07_decompressFrame (int *,void*,size_t,void const*,size_t) ;

__attribute__((used)) static size_t ZSTDv07_decompress_usingPreparedDCtx(ZSTDv07_DCtx* dctx, const ZSTDv07_DCtx* refDCtx,
                                         void* dst, size_t dstCapacity,
                                   const void* src, size_t srcSize)
{
    ZSTDv07_copyDCtx(dctx, refDCtx);
    ZSTDv07_checkContinuity(dctx, dst);
    return ZSTDv07_decompressFrame(dctx, dst, dstCapacity, src, srcSize);
}
