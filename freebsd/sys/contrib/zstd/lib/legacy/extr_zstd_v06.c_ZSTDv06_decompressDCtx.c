
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv06_DCtx ;


 size_t ZSTDv06_decompress_usingDict (int *,void*,size_t,void const*,size_t,int *,int ) ;

size_t ZSTDv06_decompressDCtx(ZSTDv06_DCtx* dctx, void* dst, size_t dstCapacity, const void* src, size_t srcSize)
{
    return ZSTDv06_decompress_usingDict(dctx, dst, dstCapacity, src, srcSize, ((void*)0), 0);
}
