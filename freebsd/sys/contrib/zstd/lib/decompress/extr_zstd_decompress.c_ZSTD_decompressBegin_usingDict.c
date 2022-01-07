
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_DCtx ;


 int FORWARD_IF_ERROR (int ) ;
 int RETURN_ERROR_IF (int ,int ) ;
 int ZSTD_decompressBegin (int *) ;
 int ZSTD_decompress_insertDictionary (int *,void const*,size_t) ;
 int ZSTD_isError (int ) ;
 int dictionary_corrupted ;

size_t ZSTD_decompressBegin_usingDict(ZSTD_DCtx* dctx, const void* dict, size_t dictSize)
{
    FORWARD_IF_ERROR( ZSTD_decompressBegin(dctx) );
    if (dict && dictSize)
        RETURN_ERROR_IF(
            ZSTD_isError(ZSTD_decompress_insertDictionary(dctx, dict, dictSize)),
            dictionary_corrupted);
    return 0;
}
