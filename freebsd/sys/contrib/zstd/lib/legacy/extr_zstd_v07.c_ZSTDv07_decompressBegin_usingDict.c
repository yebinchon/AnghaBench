
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv07_DCtx ;


 size_t ERROR (int ) ;
 size_t ZSTDv07_decompressBegin (int *) ;
 size_t ZSTDv07_decompress_insertDictionary (int *,void const*,size_t) ;
 scalar_t__ ZSTDv07_isError (size_t const) ;
 int dictionary_corrupted ;

size_t ZSTDv07_decompressBegin_usingDict(ZSTDv07_DCtx* dctx, const void* dict, size_t dictSize)
{
    { size_t const errorCode = ZSTDv07_decompressBegin(dctx);
      if (ZSTDv07_isError(errorCode)) return errorCode; }

    if (dict && dictSize) {
        size_t const errorCode = ZSTDv07_decompress_insertDictionary(dctx, dict, dictSize);
        if (ZSTDv07_isError(errorCode)) return ERROR(dictionary_corrupted);
    }

    return 0;
}
