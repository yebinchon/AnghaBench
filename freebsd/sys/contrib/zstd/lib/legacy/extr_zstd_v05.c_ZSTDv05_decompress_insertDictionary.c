
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv05_DCtx ;
typedef scalar_t__ U32 ;


 size_t ERROR (int ) ;
 scalar_t__ MEM_readLE32 (void const*) ;
 scalar_t__ ZSTDv05_DICT_MAGIC ;
 scalar_t__ ZSTDv05_isError (size_t) ;
 size_t ZSTDv05_loadEntropy (int *,void const*,size_t) ;
 int ZSTDv05_refDictContent (int *,void const*,size_t) ;
 int dictionary_corrupted ;

__attribute__((used)) static size_t ZSTDv05_decompress_insertDictionary(ZSTDv05_DCtx* dctx, const void* dict, size_t dictSize)
{
    size_t eSize;
    U32 magic = MEM_readLE32(dict);
    if (magic != ZSTDv05_DICT_MAGIC) {

        ZSTDv05_refDictContent(dctx, dict, dictSize);
        return 0;
    }

    dict = (const char*)dict + 4;
    dictSize -= 4;
    eSize = ZSTDv05_loadEntropy(dctx, dict, dictSize);
    if (ZSTDv05_isError(eSize)) return ERROR(dictionary_corrupted);


    dict = (const char*)dict + eSize;
    dictSize -= eSize;
    ZSTDv05_refDictContent(dctx, dict, dictSize);

    return 0;
}
