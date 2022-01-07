
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dictID; scalar_t__ checksumFlag; } ;
struct TYPE_4__ {scalar_t__ dictID; int xxhState; TYPE_2__ fParams; int format; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 int RETURN_ERROR_IF (int,int ,...) ;
 int XXH64_reset (int *,int ) ;
 size_t ZSTD_getFrameHeader_advanced (TYPE_2__*,void const*,size_t,int ) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 int dictionary_wrong ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTD_decodeFrameHeader(ZSTD_DCtx* dctx, const void* src, size_t headerSize)
{
    size_t const result = ZSTD_getFrameHeader_advanced(&(dctx->fParams), src, headerSize, dctx->format);
    if (ZSTD_isError(result)) return result;
    RETURN_ERROR_IF(result>0, srcSize_wrong, "headerSize too small");




    RETURN_ERROR_IF(dctx->fParams.dictID && (dctx->dictID != dctx->fParams.dictID),
                    dictionary_wrong);

    if (dctx->fParams.checksumFlag) XXH64_reset(&dctx->xxhState, 0);
    return 0;
}
