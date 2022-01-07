
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* dictID; } ;
typedef TYPE_1__ ZSTDv07_DCtx ;
typedef scalar_t__ U32 ;


 size_t ERROR (int ) ;
 void* MEM_readLE32 (char const*) ;
 scalar_t__ const ZSTDv07_DICT_MAGIC ;
 scalar_t__ ZSTDv07_isError (size_t const) ;
 size_t ZSTDv07_loadEntropy (TYPE_1__*,void const*,size_t) ;
 size_t ZSTDv07_refDictContent (TYPE_1__*,void const*,size_t) ;
 int dictionary_corrupted ;

__attribute__((used)) static size_t ZSTDv07_decompress_insertDictionary(ZSTDv07_DCtx* dctx, const void* dict, size_t dictSize)
{
    if (dictSize < 8) return ZSTDv07_refDictContent(dctx, dict, dictSize);
    { U32 const magic = MEM_readLE32(dict);
        if (magic != ZSTDv07_DICT_MAGIC) {
            return ZSTDv07_refDictContent(dctx, dict, dictSize);
    } }
    dctx->dictID = MEM_readLE32((const char*)dict + 4);


    dict = (const char*)dict + 8;
    dictSize -= 8;
    { size_t const eSize = ZSTDv07_loadEntropy(dctx, dict, dictSize);
        if (ZSTDv07_isError(eSize)) return ERROR(dictionary_corrupted);
        dict = (const char*)dict + eSize;
        dictSize -= eSize;
    }


    return ZSTDv07_refDictContent(dctx, dict, dictSize);
}
