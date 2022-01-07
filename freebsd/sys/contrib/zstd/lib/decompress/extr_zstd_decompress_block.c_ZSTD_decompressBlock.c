
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* previousDstEnd; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 int ZSTD_checkContinuity (TYPE_1__*,void*) ;
 size_t ZSTD_decompressBlock_internal (TYPE_1__*,void*,size_t,void const*,size_t,int ) ;

size_t ZSTD_decompressBlock(ZSTD_DCtx* dctx,
                            void* dst, size_t dstCapacity,
                      const void* src, size_t srcSize)
{
    size_t dSize;
    ZSTD_checkContinuity(dctx, dst);
    dSize = ZSTD_decompressBlock_internal(dctx, dst, dstCapacity, src, srcSize, 0);
    dctx->previousDstEnd = (char*)dst + dSize;
    return dSize;
}
