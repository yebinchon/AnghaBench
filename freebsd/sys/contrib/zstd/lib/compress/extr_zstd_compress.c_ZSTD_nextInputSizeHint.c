
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t inBuffTarget; size_t inBuffPos; size_t blockSize; } ;
typedef TYPE_1__ ZSTD_CCtx ;



__attribute__((used)) static size_t ZSTD_nextInputSizeHint(const ZSTD_CCtx* cctx)
{
    size_t hintInSize = cctx->inBuffTarget - cctx->inBuffPos;
    if (hintInSize==0) hintInSize = cctx->blockSize;
    return hintInSize;
}
