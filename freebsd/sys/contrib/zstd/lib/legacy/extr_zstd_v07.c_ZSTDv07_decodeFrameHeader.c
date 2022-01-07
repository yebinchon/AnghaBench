
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dictID; scalar_t__ checksumFlag; } ;
struct TYPE_4__ {scalar_t__ dictID; int xxhState; TYPE_2__ fParams; } ;
typedef TYPE_1__ ZSTDv07_DCtx ;


 size_t ERROR (int ) ;
 int XXH64_reset (int *,int ) ;
 size_t ZSTDv07_getFrameParams (TYPE_2__*,void const*,size_t) ;
 int dictionary_wrong ;

__attribute__((used)) static size_t ZSTDv07_decodeFrameHeader(ZSTDv07_DCtx* dctx, const void* src, size_t srcSize)
{
    size_t const result = ZSTDv07_getFrameParams(&(dctx->fParams), src, srcSize);
    if (dctx->fParams.dictID && (dctx->dictID != dctx->fParams.dictID)) return ERROR(dictionary_wrong);
    if (dctx->fParams.checksumFlag) XXH64_reset(&dctx->xxhState, 0);
    return result;
}
