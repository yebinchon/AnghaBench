
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv05_DCtx ;
typedef int BYTE ;


 size_t BLOCKSIZE ;
 size_t ERROR (int ) ;
 size_t ZSTDv05_decodeLiteralsBlock (int *,void const*,size_t) ;
 size_t ZSTDv05_decompressSequences (int *,void*,size_t,int const*,size_t) ;
 scalar_t__ ZSTDv05_isError (size_t) ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTDv05_decompressBlock_internal(ZSTDv05_DCtx* dctx,
                            void* dst, size_t dstCapacity,
                      const void* src, size_t srcSize)
{
    const BYTE* ip = (const BYTE*)src;
    size_t litCSize;

    if (srcSize >= BLOCKSIZE) return ERROR(srcSize_wrong);


    litCSize = ZSTDv05_decodeLiteralsBlock(dctx, src, srcSize);
    if (ZSTDv05_isError(litCSize)) return litCSize;
    ip += litCSize;
    srcSize -= litCSize;

    return ZSTDv05_decompressSequences(dctx, dst, dstCapacity, ip, srcSize);
}
