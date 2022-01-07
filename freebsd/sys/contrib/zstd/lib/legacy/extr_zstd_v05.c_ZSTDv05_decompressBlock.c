
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv05_DCtx ;


 int ZSTDv05_checkContinuity (int *,void*) ;
 size_t ZSTDv05_decompressBlock_internal (int *,void*,size_t,void const*,size_t) ;

size_t ZSTDv05_decompressBlock(ZSTDv05_DCtx* dctx,
                            void* dst, size_t dstCapacity,
                      const void* src, size_t srcSize)
{
    ZSTDv05_checkContinuity(dctx, dst);
    return ZSTDv05_decompressBlock_internal(dctx, dst, dstCapacity, src, srcSize);
}
