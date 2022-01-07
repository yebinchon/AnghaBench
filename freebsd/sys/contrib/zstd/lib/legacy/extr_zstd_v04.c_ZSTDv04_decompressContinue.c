
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv04_Dctx ;


 size_t ZSTD_decompressContinue (int *,void*,size_t,void const*,size_t) ;

size_t ZSTDv04_decompressContinue(ZSTDv04_Dctx* dctx, void* dst, size_t maxDstSize, const void* src, size_t srcSize)
{
    return ZSTD_decompressContinue(dctx, dst, maxDstSize, src, srcSize);
}
